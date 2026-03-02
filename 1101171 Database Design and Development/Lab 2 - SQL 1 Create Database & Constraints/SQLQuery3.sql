CREATE TABLE SaleOrder 
(
    OrderID         int IDENTITY(101,1) NOT NULL,
    CustID          char(4)             NOT NULL,
    EmpID           char(4)             NOT NULL,
    OrderDate       datetime            NOT NULL 
                    CONSTRAINT DF_OrderDate DEFAULT GETDATE(), 

    RequiredDate    datetime            NOT NULL,
    shippedDate     datetime            NOT NULL,
    ModifiedDate    datetime            NOT NULL 
                    CONSTRAINT DF_ModifiedDate DEFAULT GETDATE(),

    EndDate         datetime            NOT NULL,
    CONSTRAINT PK_Order PRIMARY KEY (OrderID),
    CONSTRAINT FK_Order_Employee FOREIGN KEY (EmpID)
    REFERENCES Employee (EmpID) 
);