Data Governance and Unity Catalog

What is Data Governance?

Data governance is the process of managing and controlling data within an organization. It ensures that data is accurate, secure, and available to the right users. Data governance helps organizations maintain data quality and use data responsibly for decision-making.

What is Unity Catalog?

Unity Catalog is a centralized governance solution in Databricks. It helps organizations manage, organize, and secure their data assets from a single place. It provides access control and makes it easier to discover and manage data.

Unity Catalog Structure

Unity Catalog follows a three-level hierarchy consisting of Catalog, Schema, and Object.

1. Catalog

A catalog is the highest level in Unity Catalog. It is used to separate data into large groups based on environments or business requirements.

For example, an organization may create catalogs such as dev, test, and prod to manage different environments.

2. Schema

A schema is created inside a catalog. It is used to organize related data assets into logical groups.

For example, a production catalog may contain schemas such as sales, marketing, or finance. Schemas help in organizing data in a structured manner.

3. Object

Objects are the actual assets stored within a schema. Different types of objects can be created depending on the requirement.

Tables are used to store structured data in rows and columns.

Views are virtual tables created using SQL queries.

Volumes are used to store files such as images, documents, and logs.

Models are machine learning models managed within Unity Catalog.

Functions are reusable pieces of logic that can be used in queries.

Example

If there is a catalog named prod, a schema named sales, and a table named customers, then prod is the catalog, sales is the schema, and customers is the object.

Conclusion

Unity Catalog provides a simple way to organize and govern data in Databricks. It helps users manage access, improve security, and keep data organized through catalogs, schemas, and objects.
