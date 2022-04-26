# Shipyard Changelog

Shipyard changelog built using [Hugo](https://gohugo.io/).

## Installation and local development

To run locally, from the root directory, run:
```console
make develop
```

This will run changelog in a containerized development server. You can access the changelogs locally at http://localhost:1313/

**make commands**
- To create a new release, run
    ```console
    make generate.release
    ```
    A new file will be generated in `changelog/content/released`

- To create a new deprecation notice, run
    ```console
    make generate.deprecation
    ```
    A new file will be generated in `changelog/content/deprecated`
- Deploy
    ```console
    make deploy
    ```
    This command generates static content into the `public` directory and can be served using any static contents hosting service.

## Deployment

The site is hosted on Netlify and deployment happens automatically when code is merged to `main` branch.
The `netlify.toml` contains the configuration used by netlify to deploy
