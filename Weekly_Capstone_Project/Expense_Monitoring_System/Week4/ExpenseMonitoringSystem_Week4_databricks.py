# Databricks notebook source
from pyspark.sql import functions as F

# COMMAND ----------

expenses = spark.read.csv(
    "/Volumes/pysparkazure_7405617424734388/default/week4/expenses.csv",
    header=True,
    inferSchema=True
)

display(expenses)

# COMMAND ----------

transactions_df = spark.read.csv(
    "/Volumes/pysparkazure_7405617424734388/default/week4/transactions.csv", header=True, inferSchema=True
)
display(transactions_df)

# COMMAND ----------

user_summary = transactions_df.groupBy("user_id", "month").agg(
    F.sum("amount").alias("monthly_spend")
)

# COMMAND ----------

user_details = spark.createDataFrame([
    (1, "Ravi Teja",   "ravi.teja@email.com",   "2025-01-15"),
    (2, "Sneha Reddy", "sneha.reddy@email.com",  "2025-02-10"),
    (3, "Arjun Kumar", "arjun.kumar@email.com",  "2025-01-22"),
    (4, "Priya Nair",  "priya.nair@email.com",   "2025-03-05"),
    (5, "Rohan Verma", "rohan.verma@email.com",  "2025-02-28"),
], ["user_id", "user_name", "email", "signup_date"])

# COMMAND ----------

monthly_budgets = spark.createDataFrame([
    (1, 12000.00),
    (2, 10000.00),
    (3, 11000.00),
    (4,  9000.00),
    (5, 13000.00),
], ["user_id", "monthly_budget"])

# COMMAND ----------

combined = transactions_df.join(
    user_details,
    on="user_id",
    how="inner"
)

combined.show(truncate=False)

# COMMAND ----------

monthly_summary = combined.groupBy("month", "user_id", "user_name", "email") \
    .agg(F.round(F.sum("amount"), 2).alias("total_spend"))

monthly_report = monthly_summary.join(monthly_budgets, on="user_id") \
    .withColumn("savings", F.round(F.col("monthly_budget") - F.col("total_spend"), 2)) \
    .withColumn(
        "alert_status",
        F.when(F.col("total_spend") > F.col("monthly_budget"), "Over Budget")
         .when(F.col("total_spend") < F.col("monthly_budget") * 0.7, "High Savings")
         .otherwise("On Track")
    ) \
    .select("month", "user_id", "user_name", "email",
            "total_spend", "monthly_budget", "savings", "alert_status") \
    .orderBy("month", "user_name")

monthly_report.show(truncate=False)

# COMMAND ----------

category_summary = combined.groupBy("month", "user_name", "category") \
    .agg(F.round(F.sum("amount"), 2).alias("category_spend")) \
    .orderBy("month", "user_name", F.col("category_spend").desc())

category_summary.show(truncate=False)

# COMMAND ----------

alerts_only = monthly_report \
    .filter(F.col("alert_status") == "Over Budget") \
    .orderBy(F.col("total_spend").desc())

alerts_only.show(truncate=False)

# COMMAND ----------

monthly_report.toPandas().to_csv(
    "monthly_report.csv",
    index=False
)

category_summary.toPandas().to_csv(
    "category_summary.csv",
    index=False
)

alerts_only.toPandas().to_csv(
    "budget_alerts.csv",
    index=False
)

print("Exported: monthly_report.csv")
print("Exported: category_summary.csv")
print("Exported: budget_alerts.csv")

# COMMAND ----------

monthly_report.createOrReplaceTempView("monthly_report_view")

# COMMAND ----------

spark.sql("""
    SELECT user_name,
           COUNT(*)                         AS months_over_budget,
           ROUND(SUM(savings), 2)           AS total_overspend
    FROM   monthly_report_view
    WHERE  alert_status = 'Over Budget'
    GROUP  BY user_name
    ORDER  BY total_overspend ASC
""").show(truncate=False)

# COMMAND ----------

spark.sql("""
    SELECT month,
           ROUND(AVG(total_spend), 2) AS avg_spend_across_users
    FROM   monthly_report_view
    GROUP  BY month
    ORDER  BY month
""").show(truncate=False)