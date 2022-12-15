# dbt core docker starter

```
git clone https://github.com/keaganaut/dbt-core-docker.git
```

1. Open folder in vscode dev container
3. Install dependencies with poetry

```
poetry install
```

3. Copy service_account.json into `service_account` directory. Content of this directory is gitignored.

4. Create an .env file in the project's root directory with your environment variables, see .env.example.
```
DBT_DATASET=dbt_your_name
DBT_KEYFILE=/full/path/to/service_account.json
DBT_PROJECT=gcp_project_id
```

5. Export environment variables. These env vars are used by pizza_shop/profiles.yml to establish a connection with bigquery.
```
export $(cat .env | xargs)

```

6. Activate virtualenv by spawning a nested poetry shell
```
poetry shell
```


7. This repo contains a ready-made dbt project. Test the connection with `dbt debug`. Run `dbt compile` to generate dbt artifacts (eg. manifest.json) in the default target subdirectory.

```
cd pizza_shop

dbt debug

dbt compile

```




