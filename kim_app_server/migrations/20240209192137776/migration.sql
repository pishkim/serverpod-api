BEGIN;


--
-- MIGRATION VERSION FOR kim_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('kim_app', '20240209192137776', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240209192137776', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
