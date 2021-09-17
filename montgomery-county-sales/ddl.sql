-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Houses" (
    "sale_price" float   NOT NULL,
    "bathrooms" float   NOT NULL,
    "bedrooms" float   NOT NULL,
    "living_area" float   NOT NULL,
    "home_type" varchar(40)   NOT NULL,
    "lot_area" float   NOT NULL,
    "zipcode" int   NOT NULL,
    "elem_school" varchar(100)   NOT NULL,
    "middle_school" varchar(100)   NOT NULL,
    "high_school" varchar(100)   NOT NULL
);

CREATE TABLE "Schools" (
    "school_name" varchar(100)   NOT NULL,
    "school_rating" int   NULL,
    "school_type" varchar(1)   NOT NULL,
    CONSTRAINT "pk_Schools" PRIMARY KEY (
        "school_name"
     )
);

CREATE TABLE "Demographics" (
    "zipcode" int   NOT NULL,
    "white_pct" float   NOT NULL,
    "aa_pct" float   NOT NULL,
    "asian_pct" float   NOT NULL,
    "hispanic_pct" float   NOT NULL,
    CONSTRAINT "pk_Demographics" PRIMARY KEY (
        "zipcode"
     )
);

ALTER TABLE "Houses" ADD CONSTRAINT "fk_Houses_zipcode" FOREIGN KEY("zipcode")
REFERENCES "Demographics" ("zipcode");

ALTER TABLE "Houses" ADD CONSTRAINT "fk_Houses_elem_school" FOREIGN KEY("elem_school")
REFERENCES "Schools" ("school_name");

ALTER TABLE "Houses" ADD CONSTRAINT "fk_Houses_middle_school" FOREIGN KEY("middle_school")
REFERENCES "Schools" ("school_name");

ALTER TABLE "Houses" ADD CONSTRAINT "fk_Houses_high_school" FOREIGN KEY("high_school")
REFERENCES "Schools" ("school_name");

