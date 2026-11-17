# Reproducible 'ffaframework' Workshop Environment

This project uses [`renv`](https://rstudio.github.io/renv/) to maintain an isolated, reproducible R package environment.

The included example R Markdown notebook loads and runs `ffaframework`.

## Requirements

- R version 4.6.1
- RStudio
- Internet access for initial package installation

Some R packages may also require operating-system libraries or compilation tools. `renv` manages R packages, not the R installation or system dependencies.

## Getting started

1. Extract the ZIP archive, preserving the directory structure and hidden files such as `.Rprofile`.
2. Open the project's `.Rproj` file in RStudio (or open the project directory in RStudio).
3. Run the `example_notebook.Rmd` from RStudio by clicking "Run" > "Restart R and Run All Chunks".
   - The first run may take a long time as `renv` installs the dependencies.
   - Then, click "preview" to view the generated RMarkdown notebook. You should see a plot.

## Verify the environment

Run these commands in the project R console:

```r
renv::status()
.libPaths()

library(ffaframework)
packageVersion("ffaframework")
```

The first path displayed by `.libPaths()` should point to the project's `renv` library.

`renv::status()` should report no issues once the lockfile and project library are synchronized.

## Updating dependencies (maintainers)

When adding or updating packages, install them within the active project and update the lockfile:

```r
renv::install("package-name")
renv::snapshot()
renv::status()
```

Create a new ZIP archive that includes the following files:

- `README.md`
- `.Rprofile`
- `example_notebook.Rmd`
- `data/`
- `renv.lock`
- `renv/activate.R`
- `renv/settings.json`
- `ffa-workshop.Rproj`

Maintainers using a machine running MacOS, Linux, or Windows (with git bash) can use `build.sh` to recreate the ZIP archive.
