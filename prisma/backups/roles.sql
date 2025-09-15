
\restrict Rqgi0CZyMBSj1NIXxQatBjOf9CyZbo5HbO5D5xNgY8mYLVmZR1rVl0RSZQb7jUF

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict Rqgi0CZyMBSj1NIXxQatBjOf9CyZbo5HbO5D5xNgY8mYLVmZR1rVl0RSZQb7jUF

RESET ALL;
