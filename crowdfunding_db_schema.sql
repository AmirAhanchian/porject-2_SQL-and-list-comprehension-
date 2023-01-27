-- dropping tables and database incase of previous generation of the same table, mostly used druing coding to avoid errors

DROP Table if exists "category" CASCADE;
DROP Table if exists "subcategory" CASCADE;
DROP Table if exists "campaign" CASCADE;
DROP Table if exists "contacts";

-- created tables that were needed
CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(20)   NOT NULL,
    PRIMARY KEY (category_id)
);
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(20)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(35)   NOT NULL,
    "description" varchar(55)   NOT NULL,
    "goal" varchar(10)   NOT NULL,
    "pledged" varchar(10)   NOT NULL,
    "outcome" varchar(15)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(5)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "category_id" varchar(5)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    PRIMARY KEY ("contact_id"),
	FOREIGN KEY("category_id") REFERENCES "category"("category_id"),
	FOREIGN KEY("subcategory_id") REFERENCES "subcategory"("subcategory_id")
);
CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(15)   NOT NULL,
    "last_name" varchar(15)   NOT NULL,
    "email" varchar(45)   NOT NULL,
	FOREIGN KEY("contact_id") REFERENCES "campaign"("contact_id")
);
