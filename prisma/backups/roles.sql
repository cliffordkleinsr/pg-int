
\restrict 5KSJUtBN9xHaETX3CgrtGAsB4yTTAl1folgmteR7f8cTsMvWcbY2k1PWcddWgj7

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict 5KSJUtBN9xHaETX3CgrtGAsB4yTTAl1folgmteR7f8cTsMvWcbY2k1PWcddWgj7

RESET ALL;
