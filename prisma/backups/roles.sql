
\restrict cCh3uRoSoEzGxNMUUwdsHLchKhtcRbiloxIXVj2KwZO1S9JaU9Kzhye0d5igehH

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict cCh3uRoSoEzGxNMUUwdsHLchKhtcRbiloxIXVj2KwZO1S9JaU9Kzhye0d5igehH

RESET ALL;
