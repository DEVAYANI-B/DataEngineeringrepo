use("expense_tracker");

db.receipts.drop();

db.receipts.insertMany([
  { user_id: 1, expense_id: 1,  note: "Grocery run - BigBasket",   receipt_image: "receipt_001.jpg", uploaded_at: new Date("2026-01-03") },
  { user_id: 1, expense_id: 2,  note: "Rent paid via UPI",          receipt_image: "receipt_002.jpg", uploaded_at: new Date("2026-01-05") },
  { user_id: 1, expense_id: 3,  note: "TSSPDCL electricity bill",   receipt_image: "receipt_003.jpg", uploaded_at: new Date("2026-01-08") },
  { user_id: 1, expense_id: 4,  note: "Ola ride receipt",           receipt_image: "receipt_004.jpg", uploaded_at: new Date("2026-01-10") },
  { user_id: 1, expense_id: 5,  note: "Local vegetable market",     receipt_image: "receipt_005.jpg", uploaded_at: new Date("2026-01-15") },
  { user_id: 2, expense_id: 6,  note: "Rent paid via NEFT",         receipt_image: "receipt_006.jpg", uploaded_at: new Date("2026-01-04") },
  { user_id: 2, expense_id: 7,  note: "Monthly grocery - DMart",    receipt_image: "receipt_007.jpg", uploaded_at: new Date("2026-01-06") },
  { user_id: 2, expense_id: 8,  note: "PVR movie tickets",          receipt_image: "receipt_008.jpg", uploaded_at: new Date("2026-01-12") },
  { user_id: 2, expense_id: 9,  note: "Combined utility bill",      receipt_image: "receipt_009.jpg", uploaded_at: new Date("2026-01-14") },
  { user_id: 2, expense_id: 10, note: "Apollo Pharmacy",            receipt_image: "receipt_010.jpg", uploaded_at: new Date("2026-01-20") },
  { user_id: 3, expense_id: 11, note: "Grocery shopping - Spencer's", receipt_image: "receipt_011.jpg", uploaded_at: new Date("2026-01-02") },
  { user_id: 3, expense_id: 12, note: "Bike fuel - HP Petrol Pump",   receipt_image: "receipt_012.jpg", uploaded_at: new Date("2026-01-07") },
  { user_id: 3, expense_id: 13, note: "Concert ticket booking",       receipt_image: "receipt_013.jpg", uploaded_at: new Date("2026-01-11") },
  { user_id: 3, expense_id: 14, note: "Rent paid via cheque",         receipt_image: "receipt_014.jpg", uploaded_at: new Date("2026-01-01") },
  { user_id: 3, expense_id: 15, note: "ACT Fibernet bill",            receipt_image: "receipt_015.jpg", uploaded_at: new Date("2026-01-18") }
]);


db.receipts.createIndex({ user_id: 1 });
db.receipts.createIndex({ uploaded_at: -1 });
print("Receipts for user 1:");
db.receipts.find({ user_id: 1 }).pretty();
