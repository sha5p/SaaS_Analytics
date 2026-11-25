Renaming col 
USE SaaS_Analytics;
GO

EXEC sp_rename 'dbo.customers.column1', 'customer_id', 'COLUMN';
EXEC sp_rename 'dbo.customers.column2', 'signup_date', 'COLUMN';
EXEC sp_rename 'dbo.customers.column3', 'company_size', 'COLUMN';
EXEC sp_rename 'dbo.customers.column4', 'industry', 'COLUMN';
EXEC sp_rename 'dbo.customers.column5', 'acquisition_channel', 'COLUMN';
EXEC sp_rename 'dbo.customers.column6', 'country', 'COLUMN';
GO

-- Verify the clean headers
SELECT TOP 5 * FROM dbo.customers;


USE SaaS_Analytics;
GO

-- Rename all columns for dbo.payments
EXEC sp_rename 'dbo.payments.column1', 'payment_id', 'COLUMN';
EXEC sp_rename 'dbo.payments.column2', 'invoice_id', 'COLUMN';
EXEC sp_rename 'dbo.payments.column3', 'payment_date', 'COLUMN';
EXEC sp_rename 'dbo.payments.column4', 'amount', 'COLUMN';
EXEC sp_rename 'dbo.payments.column5', 'payment_status', 'COLUMN';
EXEC sp_rename 'dbo.payments.column6', 'notes', 'COLUMN';
GO

-- Verify the clean headers
SELECT TOP 5 * FROM dbo.payments;


--note this was done for every data set in .csv data file as no info that was contained had inital lables so personal intpretations were made 