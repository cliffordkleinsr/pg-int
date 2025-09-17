
\restrict xvzqAdTMU414dBcHzzJTltKahuIlxxpdS1XV1WH5IEyGAal9ek5Dm0ZcCEztt6U

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict xvzqAdTMU414dBcHzzJTltKahuIlxxpdS1XV1WH5IEyGAal9ek5Dm0ZcCEztt6U

RESET ALL;
