-- Create "departments" table
CREATE TABLE "departments" (
  "created_at" timestamptz NULL,
  "updated_at" timestamptz NULL,
  "name" text NULL,
  "director_id" character varying(64) NULL,
  "id" text NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "fk_departments_director" FOREIGN KEY ("director_id") REFERENCES "users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION
);
