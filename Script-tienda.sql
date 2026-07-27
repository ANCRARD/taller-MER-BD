CREATE TABLE Client (
    ClientID    SERIAL PRIMARY KEY,
    Name        VARCHAR(100) NOT NULL,
    Phone       VARCHAR(20),
    Address     VARCHAR(200),
    Email       VARCHAR(100)
);

CREATE TABLE Products (
    ProductID           SERIAL PRIMARY KEY,
    Name                VARCHAR(100) NOT NULL,
    Price               NUMERIC(10,2) NOT NULL,
    Description         VARCHAR(255),
    InventoryQuantity   INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE Sale (
    SalesNumberID   SERIAL PRIMARY KEY,
    Date            DATE NOT NULL DEFAULT CURRENT_DATE,
    TotalValue      NUMERIC(10,2) NOT NULL DEFAULT 0,
    ClientID        INTEGER NOT NULL,
    CONSTRAINT fk_sale_client
        FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

CREATE TABLE SaleDetail (
    SalesNumberID       INTEGER NOT NULL,
    ProductID           INTEGER NOT NULL,
    Quantity             INTEGER NOT NULL CHECK (Quantity > 0),
    HistoricalUnitPrice NUMERIC(10,2) NOT NULL,
    PRIMARY KEY (SalesNumberID, ProductID),
    CONSTRAINT fk_saledetail_sale
        FOREIGN KEY (SalesNumberID) REFERENCES Sale(SalesNumberID),
    CONSTRAINT fk_saledetail_product
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);