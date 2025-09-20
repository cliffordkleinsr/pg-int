
\restrict qZ9frudMMF2c5Qwjqz8weqKvEiDXBicZZPrm8hLFc2QAd3cZgTNjzcHzRCMPYCa

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict qZ9frudMMF2c5Qwjqz8weqKvEiDXBicZZPrm8hLFc2QAd3cZgTNjzcHzRCMPYCa

RESET ALL;
