CREATE TABLE "Employees"(
                 "FullName" TEXT NOT NULL,
                 "Salary" INT,
                 "JobPosition" TEXT,
                 "PhoneExtension" varchar(3),
                 "IsPartTime" BOOLEAN
                 );



INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Kristy Prieto', 1000000, 'CEO', '305', 'TRUE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Marc Jacobs', 10000, 'Graphic Designer', '450', 'TRUE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Walter Price', 50000, 'Cook', '255', 'FALSE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jessica Ashley', 115000, 'HR Manager', '360', 'TRUE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Max Smith', 25000, 'Cook', '255', 'FALSE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Melissa McAbernathy', 75000, 'Accountant', '325', 'FALSE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 35000, 'Cook', '255', 'FALSE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Jennifer Lawrence', 55000, 'Janitor', '160', 'TRUE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Ash Lee', 85000, 'IT Support', '775', 'FALSE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Juniper Mint', 5000, 'Social Media Intern', '500', 'TRUE');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Florence Nightingale', 150000, 'Nurse', '911', 'FALSE');


SELECT * FROM "Employees";


SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'False';


INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Ada Lovelace', 450 , 'Software Developer', '101', 'TRUE');


UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';


DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';


ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);


ALTER TABLE "Employees" ADD COLUMN "Id" SERIAL PRIMARY KEY;


CREATE TABLE "Departments"(
  "Name" TEXT,
  "BuildingNumber" INT,
  "DepartmentId" SERIAL PRIMARY KEY
);

INSERT INTO "Departments" ("Name", "BuildingNumber")
VALUES ('Main Building', 680);

INSERT INTO "Departments" ("Name", "BuildingNumber")
VALUES ('Work From Home', 1360);


ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("BuildingId");


UPDATE "Employees" SET "DepartmentId" = 2 WHERE "Id" IN (1, 2, 4, 6, 12);
UPDATE "Employees" SET "DepartmentId" = 1 WHERE "Id" IN (3, 5, 8, 9, 10, 11);


SELECT * 
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."BuildingId";