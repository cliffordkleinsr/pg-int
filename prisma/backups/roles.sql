
\restrict RZ4zVqBQcNcz6mIhPTkyddyUJCacQsKwHCNGaGtvvA5xq58WEYy9Dx6sMkAN6Zw

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

ALTER ROLE "anon" SET "statement_timeout" TO '3s';

ALTER ROLE "authenticated" SET "statement_timeout" TO '8s';

ALTER ROLE "authenticator" SET "statement_timeout" TO '8s';

\unrestrict RZ4zVqBQcNcz6mIhPTkyddyUJCacQsKwHCNGaGtvvA5xq58WEYy9Dx6sMkAN6Zw

RESET ALL;
