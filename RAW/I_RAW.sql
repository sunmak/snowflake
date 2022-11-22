CREATE OR REPLACE STORAGE INTEGRATION I_RAW
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'AZURE'
  ENABLED = TRUE
  AZURE_TENANT_ID = '1e3588c1-4b62-42c7-8d3a-640f42dadef5'
  STORAGE_ALLOWED_LOCATIONS = ('azure://storedir.blob.core.windows.net/adventurework')
  ;

    -- we have to add snowflake permission in the ADLS
  -- for this first use below command 
        desc storage integration I_RAW
  -- copy AZURE_CONSENT_URL to browser address bar and then allow
  -- copy AZURE_MULTI_TENANT_APP_NAME property value until _
  -- add this permission as contributor in ADLS Gen 2