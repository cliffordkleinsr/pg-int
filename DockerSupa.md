## Notes about setting up Supabase.

1. Edit these fields:
- Postgres pass
- Dash Pass
- default tenant id

2. Connect to postgress with this format:
 - Pooled Connection: `postgres://postgres.[your-tenant-id]:[your-super-secret-and-long-postgres-password]@[your-server-ip]:6543/postgres`
 - Non Pooled: `postgres://postgres.[your-tenant-id]:[your-super-secret-and-long-postgres-password]@[your-server-ip]:5432/postgres`

>[!NOTE]
>If you dont want to use server ip on cloudflare ensure you dont proxy the connection but issue a blank ssl certificate
