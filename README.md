# Shipyard Changelog

Shipyard changelog built using [Hugo](https://gohugo.io/).

## Installation and local development
Install Hugo on your computer
```console
# macOS
brew install hugo
```
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

We will be using Netlify for deployment
Netlify will need the build command set to `make deploy` and the build directory set to `public`.
Once everything is set up it should be able to track the `main` branch, they default to `master` so we may need to change that in settings. After that, pushes to `main` will automaticallly deploy the changelog site.
