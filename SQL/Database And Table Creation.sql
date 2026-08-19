CREATE DATABASE DarkKitchenDB;
USE DarkKitchenDB;
CREATE TABLE Customers (
    CustomerID VARCHAR(20),
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Age INT,
    Gender VARCHAR(20),
    LoyaltyTier VARCHAR(20),
PRIMARY KEY (CustomerID));
CREATE TABLE Kitchens (
    KitchenID VARCHAR(20),
    KitchenName VARCHAR(100),
    City VARCHAR(50),
    DailyCapacity INT,
    StaffCount INT,
PRIMARY KEY (KitchenID));
CREATE TABLE Riders (
    RiderID VARCHAR(20),
    RiderName VARCHAR(100),
    City VARCHAR(50),
    VehicleType VARCHAR(30),
    ExperienceYears INT,
    Rating DECIMAL(2,1),
PRIMARY KEY (RiderID));
CREATE TABLE Menu (
    MenuID VARCHAR(10),
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    CostPrice DECIMAL(10,2),
    SellingPrice DECIMAL(10,2),
PRIMARY KEY (MenuID));
CREATE TABLE Calendar (
    Date DATE,
    Year INT,
    MonthNo INT,
    Month VARCHAR(20),
    Quarter INT,
    Weekday INT,
PRIMARY KEY (Date));
CREATE TABLE Orders (
    OrderID VARCHAR(10),
    CustomerID VARCHAR(10),
    KitchenID VARCHAR(10),
    RiderID VARCHAR(10),
    OrderDate DATE,
    PreparationTime INT,
    DeliveryTime INT,
    OrderStatus VARCHAR(20),
    TotalAmount DECIMAL(12,2),
    Discount DECIMAL(12,2),
    TotalCost DECIMAL(12,2),
    CustomerRating DECIMAL(2,1),
    DistanceKM DECIMAL(6,2),
    PaymentMethod VARCHAR(30),
    DeliveryPartner VARCHAR(30),
    Weather VARCHAR(20),
    TrafficLevel VARCHAR(20),
    TimeSlot VARCHAR(20),
    OrderPriority VARCHAR(20),
    CouponCode VARCHAR(30),
    DiscountType VARCHAR(30),
    PreparationDelayReason VARCHAR(50),
    DeliveryDelayReason VARCHAR(50),
PRIMARY KEY (OrderID));
CREATE TABLE Order_Items (
    OrderItemID VARCHAR(12),
    OrderID VARCHAR(10),
    MenuID VARCHAR(10),
    Quantity INT,
PRIMARY KEY (OrderItemID));
CREATE TABLE Inventory (
    InventoryID VARCHAR(12),
    KitchenID VARCHAR(10),
    Ingredient VARCHAR(10),
    StockQty INT,
    WasteQty INT,
    ReorderLevel INT,
PRIMARY KEY (InventoryID));
CREATE TABLE Complaints (
    ComplaintID VARCHAR(12),
    OrderID VARCHAR(10),
    ComplaintType VARCHAR(50),
    Status VARCHAR(20),
    ResolutionHours INT,
PRIMARY KEY (ComplaintID));
CREATE TABLE Refunds (
    RefundID VARCHAR(12),
    OrderID VARCHAR(10),
    RefundAmount DECIMAL(12,2),
    RefundReason VARCHAR(50),
PRIMARY KEY (RefundID));
SHOW TABLES;
SHOW CREATE TABLE Orders;
SELECT * FROM DarkKitchenDB.customers;
SELECT * FROM DarkKitchenDB.calendar;
SELECT * FROM DarkKitchenDB.inventory;
SELECT * FROM DarkKitchenDB.kitchens;
SELECT * FROM DarkKitchenDB.menu;
SELECT * FROM DarkKitchenDB.order_items;
SELECT * FROM DarkKitchenDB.riders;
SELECT * FROM DarkKitchenDB.complaints;   
SELECT * FROM DarkKitchenDB.orders;
SELECT * FROM DarkKitchenDB.refunds;
USE darkkitchendb;
SELECT 'customers' AS table_name, COUNT(*) AS row_count FROM customers
UNION ALL
SELECT 'kitchens', COUNT(*) FROM kitchens
UNION ALL
SELECT 'riders', COUNT(*) FROM riders
UNION ALL
SELECT 'menu', COUNT(*) FROM menu
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'inventory', COUNT(*) FROM inventory
UNION ALL
SELECT 'complaints', COUNT(*) FROM complaints
UNION ALL
SELECT 'refunds', COUNT(*) FROM refunds
UNION ALL
SELECT 'calendar', COUNT(*) FROM calendar;
