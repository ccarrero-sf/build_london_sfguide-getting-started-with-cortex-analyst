# Getting Started with Cortex Analyst BUILD London Bootcamp Edition!
![image](img/build_logo.png)

This is an special repository for BUILD London 2025 to make sure this can be run in less than 1h 15m which is the duration of the Bootcamp for Cortex Analyst. 

This is the source code repository for the accompanying [Getting Started with Cortex Analyst](https://quickstarts.snowflake.com/guide/getting_started_with_cortex_analyst/index.html) Quickstart which is available on [quickstarts.snowflake.com](https://quickstarts.snowflake.com). Please refer to the quickstart for step by step explanations but follow this guide here in order to complete the bootcamp for BUILD session.

We are going to use Snowflake GIT integration in order to accelerate the execution of some tasks (create DB, load data, etc) that are needed before going deeper into Cortex Analyst. Also this repository simplify some of the requirements of the original repository as for simplicity we are using just the ADMINISTRATOR account. This is not recommended but we just want to concentrate on the Cortex Analys piece for this short Bootcamp.

Follow these steps:

## 1.- Create one Snowflake Trial Account if not done already

We will be using a Snowflake Trial Account for this lab. Go to (https://signup.snowflake.com/), enter your name, work email and click continue:

For this Bootcamp make sure you select these options:
- Snowflake Edition: <b>Enterprise</b>
- Cloud Provider: <b>AWS</b>
- Region: <b>EU (Frankfurt)</b>

![image](img/trial_account.png)

## 2.- Logging into your new account and setup Git

We will use Snowflake GIT integration to point to this repository. 

First create a new Worksheet to enter a few SQL commands. On the left click on Projects -> Worksheets and on the right lick + for  new SQL worksheet.
![image](img/worksheet.png)

Copy the SQL code form [1_setup_git.sql](1_setup_git_sql) and run it in the worksheet. This will:

- Create a database and one schema to hold our GIT repository
- Will enable a bundle to run later a Streamlit in Snowflake App with a required Python version

If you refresh Databases on the left, you will see now your GIT_BUILD_LONDON datbase with the schema and the GIT repository. You can expand it to see the files.
![image](img/git.png)

## 3.- Setup the Snowflake Environment

Taking advantage of the GIT integration, find "create_snowflake_objects.sql", click on "...." and select "Copy into worksheet"
![image](img/create_objects.png)

This worksheet is a simplification of the original one from the main Quickstart as we avoid creating a specific ROLE as just use ACCOUNTADMIN for simplicity.

In that worksheet, click on "Run All".








