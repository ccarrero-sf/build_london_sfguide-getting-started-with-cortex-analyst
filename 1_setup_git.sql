
create or replace database git_build_london;
create or replace schema labs;
use warehouse compute_wh;

CREATE OR REPLACE API INTEGRATION git_api_integration_build_lab1
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/ccarrero-sf/')
  ENABLED = TRUE;

CREATE OR REPLACE GIT REPOSITORY git_lab1_cortex_analyst
    api_integration = git_api_integration_build_lab1
    origin = 'https://github.com/ccarrero-sf/build_london_sfguide-getting-started-with-cortex-analyst';

-- Make sure we get the latest files
ALTER GIT REPOSITORY git_lab1_cortex_analyst FETCH;


SELECT SYSTEM$BEHAVIOR_CHANGE_BUNDLE_STATUS('2024_08');
-- This needs to be enabled to use later the Semantic Model Generator SIS App
SELECT SYSTEM$ENABLE_BEHAVIOR_CHANGE_BUNDLE('2024_08');
-- Check it is enabled
SELECT SYSTEM$BEHAVIOR_CHANGE_BUNDLE_STATUS('2024_08');