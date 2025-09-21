
\restrict Bpc26mySo29woR1Uifs0bErGz7THfc6zC8a90MRByjR9kwDzjN7RMoaPijaR48c

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict Bpc26mySo29woR1Uifs0bErGz7THfc6zC8a90MRByjR9kwDzjN7RMoaPijaR48c

RESET ALL;
