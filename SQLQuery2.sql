﻿CREATE TABLE ImageDataTable(
   ID             INTEGER  NOT NULL PRIMARY KEY 
  ,vegetable      VARCHAR(20) NOT NULL
  ,Image          VARCHAR(67) NOT NULL
  ,"Image source" VARCHAR(89) NOT NULL
);
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 1,'Artichoke','https://assets.sainsburys-groceries.co.uk/gol/7967196/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Artichoke.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 2,'Red onion','https://assets.sainsburys-groceries.co.uk/gol/1195477/1/140x140.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Red Onion.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 3,'Spinach','https://assets.sainsburys-groceries.co.uk/gol/7176881/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Spinach.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 4,'Sweet potato','https://assets.sainsburys-groceries.co.uk/gol/1198997/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Sweet Potato.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 5,'Baking potato','https://assets.sainsburys-groceries.co.uk/gol/671682/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Baking Potato.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 6,'Maris piper potato','https://assets.sainsburys-groceries.co.uk/gol/1308228/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Maris Piper Potato.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 7,'Asparagus','https://assets.sainsburys-groceries.co.uk/gol/172684/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Asparagus.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 8,'Carrot','https://assets.sainsburys-groceries.co.uk/gol/6002373/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Carrot.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 9,'Cauliflower','https://assets.sainsburys-groceries.co.uk/gol/758/1/140x140.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Cauliflower.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 10,'Celery','https://assets.sainsburys-groceries.co.uk/gol/805353/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Celery.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 11,'Yellow pepper','https://assets.sainsburys-groceries.co.uk/gol/1236651/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Yellow Pepper.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 12,'Green pepper','https://assets.sainsburys-groceries.co.uk/gol/1236620/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Green Pepper.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 13,'Red cabbage','https://assets.sainsburys-groceries.co.uk/gol/8091687/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Red Cabbage.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 14,'Leek','https://assets.sainsburys-groceries.co.uk/gol/7902077/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Leek.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 15,'Lettuce','https://assets.sainsburys-groceries.co.uk/gol/714310/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Lettuce.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 16,'Mushroom','https://assets.sainsburys-groceries.co.uk/gol/7230677/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Mushroom.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 17,'Parsnip','https://assets.sainsburys-groceries.co.uk/gol/1002782/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Parsnip.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 18,'Beetroot','https://assets.sainsburys-groceries.co.uk/gol/1116342/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Beetoroot.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 19,'Pepper','https://assets.sainsburys-groceries.co.uk/gol/1236644/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Red Pepper.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 20,'Mini potato','https://assets.sainsburys-groceries.co.uk/gol/7680217/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Mini Potato.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 21,'Radish','https://assets.sainsburys-groceries.co.uk/gol/8117251/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Radish.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 22,'Red pepper','https://assets.sainsburys-groceries.co.uk/gol/1236644/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Red Pepper.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 23,'Broccoli','https://assets.sainsburys-groceries.co.uk/gol/1192001/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Broccoli.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 24,'Brussels sprouts','https://assets.sainsburys-groceries.co.uk/gol/12362/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Brussels Spouts.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 25,'Cabbage','https://assets.sainsburys-groceries.co.uk/gol/385190/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\Cabbage.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 26,'Whole Cucumber','https://assets.sainsburys-groceries.co.uk/gol/62/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Cucumber.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 27,'Aubergine','https://assets.sainsburys-groceries.co.uk/gol/6026956/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Aubergine.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 28,'Garlic','https://assets.sainsburys-groceries.co.uk/gol/529525/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Garlic.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 29,'Green beans','https://assets.sainsburys-groceries.co.uk/gol/1039382/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Green Beans.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 30,'Red chilies','https://assets.sainsburys-groceries.co.uk/gol/6516404/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Red Chillies.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 31,'Butternut squash','https://assets.sainsburys-groceries.co.uk/gol/1197303/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Butternut Squash.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 32,'Courgette','https://assets.sainsburys-groceries.co.uk/gol/1192056/1/140x140.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Courgette.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 33,'Spring Onion','https://assets.sainsburys-groceries.co.uk/gol/1373/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Spring Onion.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 34,'Avocado','https://assets.sainsburys-groceries.co.uk/gol/7658/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Avocado.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 35,'Classic Tomatoes','https://assets.sainsburys-groceries.co.uk/gol/606516/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Classic Tomatoes.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 36,'Cherry Vine Tomatoes','https://assets.sainsburys-groceries.co.uk/gol/662789/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Cherry Vine Tomatoes.jpg', SINGLE_BLOB) as ImageData;
INSERT INTO ImageDataTable(ID,vegetable,Image,"Image source") SELECT 37,'Wild Rocket','https://assets.sainsburys-groceries.co.uk/gol/7791046/1/300x300.jpg',BulkColumn FROM OPENROWSET(BULK '\\ECFLE42\STU-Ms-N-Z$\SEPT-2019\X-SITE\R\ROBERTTHORNBERRY\HND\images\Wild Rocket.jpg', SINGLE_BLOB) as ImageData;