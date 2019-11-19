-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "colleges" (
    "college_id" int   NOT NULL,
    "college_name" varchar   NOT NULL,
	"address" varchar NOT NULL,
    "website" varchar   NOT NULL,
    "type" varchar   NOT NULL,
    "awards_offered" varchar   NOT NULL,
    "campus_setting" varchar   NOT NULL,
    "campus_housing" varchar   NOT NULL,
    "student_population" int   NOT NULL,
    "transfer-out_rate" varchar   NOT NULL,
    "college_rank" varchar   NOT NULL,
    CONSTRAINT "pk_colleges" PRIMARY KEY (
        "college_id"
     )
);

CREATE TABLE "grad_rate" (
    "college_id" int   NOT NULL,
    "college_name" varchar   NOT NULL,
    "year" int   NOT NULL,
    "count_of_students" int   NOT NULL,
    "count_of_graduates" int   NOT NULL,
    "percent_of_graduates" varchar   NOT NULL
);

CREATE TABLE "tuition" (
    "college_id" int   NOT NULL,
    "college_name" varchar   NOT NULL,
    "years" int   NOT NULL,
    "tuition" MONEY   NOT NULL
);

ALTER TABLE "grad_rate" ADD CONSTRAINT "fk_grad_rate_college_id" FOREIGN KEY("college_id")
REFERENCES "colleges" ("college_id");

ALTER TABLE "tuition" ADD CONSTRAINT "fk_tuition_college_id" FOREIGN KEY("college_id")
REFERENCES "colleges" ("college_id");