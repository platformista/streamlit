<p align="center">
<a href="https://console.platform.sh/projects/create-project/?template=https://github.com/platformista/streamlit/blob/main/template-definition.yaml&utm_campaign=deploy_on_platform?utm_medium=button&utm_source=affiliate_links&utm_content=https://github.com/platformista/streamlit/blob/main/template-definition.yaml">
    <img src="https://platform.sh/images/deploy/lg-blue.svg" alt="Deploy on Platform.sh" width="180px" />
</a>

</p>

# Snowpark and Streamlit by Snowflake

This template provides the most basic configuration for [getting started with snowpark for Python and streamlit](https://quickstarts.snowflake.com/guide/getting_started_with_snowpark_for_python_streamlit/index.html?index=..%2F..index#3) on Platform.sh.

## Features

* Python 3.8
* Automatic TLS certificates

## Customizations

The following files are of particular importance.  If using this project as a reference for your own existing project, replicate the changes below to your project.

* The `.platform.app.yaml`, `.platform/services.yaml`, and `.platform/routes.yaml` files have been added.  These provide Platform.sh-specific configuration and are present in all projects on Platform.sh.  You may customize them as you see fit.

## Configure your environment

Once you deployed a new platform.sh project out of this template, you will need to set up some environment variables for it work correctly.
They are being used in [this piece of code](/snowpark_streamlit_app.py#LL20C4-L28C5):

```python
connection_parameters = {
    "account": os.getenv("SNOW_ACCOUNT_ID"),
    "user": os.getenv("SNOW_USER"),
    "password": os.getenv("SNOW_PASSWORD"),
    "role": os.getenv("SNOW_ROLE"),
    "warehouse": os.getenv("COMPUTE_WH"),
    "database": os.getenv("SNOW_DATABASE"),
    "schema": os.getenv("SNOW_SCHEMA")
}
```

- To set `SNOW_ACCOUNT_ID` you can use [your account name](https://docs.snowflake.com/en/user-guide/admin-account-identifier)
- To set `SNOW_USER` get the `username` from your Snowflake profile
- To set `SNOW_PASSWORD` use your account's password

These variables can be set using [the platform.sh CLI or the Web Console](https://docs.platform.sh/development/variables/set-variables.html#create-project-variables).

The remainder of the environment variables is set in code (in the `.platform.app.yaml`) as they currently hold non-sensitive data.

## References

* [Python](https://www.python.org/)
* [Python on Platform.sh](https://docs.platform.sh/languages/python.html)
* [Snowflake](https://snowflake.com)
* [Snowpark](https://www.snowflake.com/en/data-cloud/snowpark/)
* [Streamlit](https://streamlit.io/)
