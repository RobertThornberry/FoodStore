﻿CREATE TABLE ImageDataTable(
   ID             INTEGER  NOT NULL IDENTITY (1,1) PRIMARY KEY 
  ,Vegetable      NVARCHAR(MAX) NOT NULL
  ,ImageLink      NVARCHAR(MAX) NOT NULL
  ,Category       NVARCHAR(MAX) NOT NULL
  ,Price		  NVARCHAR(MAX) NOT NULL
  ,"ImageSource"  VARBINARY(MAX) NOT NULL
);
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Artichoke','https://assets.sainsburys-groceries.co.uk/gol/7967196/1/300x300.jpg','chilled','£3.00',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Artichoke.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Red onion','https://assets.sainsburys-groceries.co.uk/gol/1195477/1/140x140.jpg','vegetables','£0.95',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Red Onion.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Spinach','https://assets.sainsburys-groceries.co.uk/gol/7176881/1/300x300.jpg','salad','£1.20',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Spinach.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Sweet potato','https://assets.sainsburys-groceries.co.uk/gol/1198997/1/300x300.jpg','vegetables','£1.09',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Sweet Potato.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Baking potato','https://assets.sainsburys-groceries.co.uk/gol/671682/1/300x300.jpg','vegetables','£0.70',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Baking Potato.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Maris piper potato','https://assets.sainsburys-groceries.co.uk/gol/1308228/1/300x300.jpg','vegetables','£1.40',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Maris Piper Potato.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Asparagus','https://assets.sainsburys-groceries.co.uk/gol/172684/1/300x300.jpg','vegetables','£1.99',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Asparagus.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Carrot','https://assets.sainsburys-groceries.co.uk/gol/6002373/1/300x300.jpg','vegetables','£0.65',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Carrot.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Cauliflower','https://assets.sainsburys-groceries.co.uk/gol/758/1/140x140.jpg','vegetables','£0.99',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Cauliflower.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Celery','https://assets.sainsburys-groceries.co.uk/gol/805353/1/300x300.jpg','salad','£0.57',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Celery.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Yellow pepper','https://assets.sainsburys-groceries.co.uk/gol/1236651/1/300x300.jpg','salad','£0.55',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Yellow Pepper.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Green pepper','https://assets.sainsburys-groceries.co.uk/gol/1236620/1/300x300.jpg','salad','£0.55',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Green Pepper.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Red cabbage','https://assets.sainsburys-groceries.co.uk/gol/8091687/1/300x300.jpg','salad','£1.43',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Red Cabbage.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Leek','https://assets.sainsburys-groceries.co.uk/gol/7902077/1/300x300.jpg','vegetables','£1.19',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Leek.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Lettuce','https://assets.sainsburys-groceries.co.uk/gol/714310/1/300x300.jpg','salad','£0.75',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Lettuce.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Mushroom','https://assets.sainsburys-groceries.co.uk/gol/7230677/1/300x300.jpg','vegetables','£0.89',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Mushroom.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Parsnip','https://assets.sainsburys-groceries.co.uk/gol/1002782/1/300x300.jpg','vegetables','£0.65',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Parsnip.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Beetroot','https://assets.sainsburys-groceries.co.uk/gol/1116342/1/300x300.jpg','salad','£0.40',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Beetroot.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Pepper','https://assets.sainsburys-groceries.co.uk/gol/1236644/1/300x300.jpg','salad','£0.55',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Red Pepper.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Mini potato','https://assets.sainsburys-groceries.co.uk/gol/7680217/1/300x300.jpg','vegetables','£1.20',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Mini Potato.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Radish','https://assets.sainsburys-groceries.co.uk/gol/8117251/1/300x300.jpg','salad','£0.49',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Radish.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Red pepper','https://assets.sainsburys-groceries.co.uk/gol/1236644/1/300x300.jpg','salad','£0.55',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Red Pepper.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Broccoli','https://assets.sainsburys-groceries.co.uk/gol/1192001/1/300x300.jpg','vegetables','£2.19',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Broccoli.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Brussels sprouts','https://assets.sainsburys-groceries.co.uk/gol/12362/1/300x300.jpg','vegetables','£1.00',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Brussels Spouts.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Cabbage','https://assets.sainsburys-groceries.co.uk/gol/385190/1/300x300.jpg','salad','£0.67',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Cabbage.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Whole Cucumber','https://assets.sainsburys-groceries.co.uk/gol/62/1/300x300.jpg','salad','£0.89',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Cucumber.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Aubergine','https://assets.sainsburys-groceries.co.uk/gol/6026956/1/300x300.jpg','vegetables','£0.89',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Aubergine.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Garlic','https://assets.sainsburys-groceries.co.uk/gol/529525/1/300x300.jpg','herbs & ingredients','£0.24',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Garlic.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Green beans','https://assets.sainsburys-groceries.co.uk/gol/1039382/1/300x300.jpg','vegetables','£1.25',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Green Beans.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Red chilies','https://assets.sainsburys-groceries.co.uk/gol/6516404/1/300x300.jpg','chilled','£0.57',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Red Chillies.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Butternut squash','https://assets.sainsburys-groceries.co.uk/gol/1197303/1/300x300.jpg','vegetables','£1.50',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Butternut Squash.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Courgette','https://assets.sainsburys-groceries.co.uk/gol/1192056/1/140x140.jpg','vegetables','£2.78',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Courgette.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Spring Onion','https://assets.sainsburys-groceries.co.uk/gol/1373/1/300x300.jpg','salad','£0.55',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Spring Onion.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Avocado','https://assets.sainsburys-groceries.co.uk/gol/7658/1/300x300.jpg','salad','£0.75',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Avocado.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Classic Tomatoes','https://assets.sainsburys-groceries.co.uk/gol/606516/1/300x300.jpg','salad','£0.90',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Classic Tomatoes.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Cherry Vine Tomatoes','https://assets.sainsburys-groceries.co.uk/gol/662789/1/300x300.jpg','salad','£2.25',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Cherry Vine Tomatoes.jpg', SINGLE_BLOB) as ImageLinkData;
INSERT INTO ImageDataTable(Vegetable,ImageLink,Category,Price,"ImageSource") SELECT 'Wild Rocket','https://assets.sainsburys-groceries.co.uk/gol/7791046/1/300x300.jpg','salad','£1.00',BulkColumn FROM OPENROWSET(BULK N'C:\Users\robertthornberry\Downloads\images\Wild Rocket.jpg', SINGLE_BLOB) as ImageLinkData;