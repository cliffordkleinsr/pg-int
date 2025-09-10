
\restrict F3faoZHtmJEthAx5pycJhJeqCT76t60eMAJHT9r8EmtH2avxsPVP6kwcKX46CWp

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict F3faoZHtmJEthAx5pycJhJeqCT76t60eMAJHT9r8EmtH2avxsPVP6kwcKX46CWp

RESET ALL;
