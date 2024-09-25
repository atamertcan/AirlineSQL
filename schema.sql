CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL ,
    "last_name" TEXT NOT NULL,
    "age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "time" NUMERIC,
    "flight_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flights"("id")

);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A','B','C','D','E','F','T')),
    PRIMARY KEY ("id")

);
