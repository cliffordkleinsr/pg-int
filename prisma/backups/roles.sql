
\restrict d2srhYLu9p6BB4erxq9oUjPnqTYc6lwiAJfTDLYvxd5pGhH4eCyEOEZJn46pLft

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict d2srhYLu9p6BB4erxq9oUjPnqTYc6lwiAJfTDLYvxd5pGhH4eCyEOEZJn46pLft

RESET ALL;
