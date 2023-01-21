--
-- Class Place as table place
--

CREATE TABLE "place" (
  "id" serial,
  "name" text NOT NULL,
  "location" text NOT NULL,
  "type" text NOT NULL
);

ALTER TABLE ONLY "place"
  ADD CONSTRAINT place_pkey PRIMARY KEY (id);


