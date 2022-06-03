USE SEDC

GO

ALTER TABLE PRODUCTS
ADD CONSTRAINT default_Price
DEFAULT '1' FOR Price;

GO 
--Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
--i na ova mi javuva nekoj error
ALTER TABLE PRODUCTS
ADD CONSTRAINT CHECK_Price CHECK (Price > Price*2)

GO 
--Change Products table to guarantee unique names across the products
--tuka mi javuva nekoj error
ALTER TABLE PRODUCTS
ADD UNIQUE (Name)