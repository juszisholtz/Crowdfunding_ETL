DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE "category" (
    "category_id" VARCHAR(10) NOT NULL PRIMARY KEY,
    "category" VARCHAR(20) NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10) NOT NULL PRIMARY KEY,
    "subcategory" VARCHAR(20) NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int NOT NULL PRIMARY KEY,
    "first_name" VARCHAR(20),
    "last_name" VARCHAR(20),
    "email" VARCHAR(50)
);

CREATE TABLE "campaign" (
    "cf_id" int NOT NULL PRIMARY KEY,
    "contact_id" int NOT NULL REFERENCES Contacts (contact_id),
    "company_name" VARCHAR(50),
    "description" VARCHAR(200),
    "goal" float,
    "pledged" float,
    "outcome" VARCHAR(10),
    "backers_count" int,
    "country" VARCHAR(2),
    "currency" VARCHAR(3),
    "launch_date" date,
    "end_date" date,
    "category_id" VARCHAR(10) NOT NULL REFERENCES Category (category_id),
    "subcategory_id" VARCHAR(10) NOT NULL REFERENCES Subcategory (subcategory_id)
);

