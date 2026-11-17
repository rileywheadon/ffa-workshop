#!/bin/bash

rm ffa-workshop.zip

zip -r ffa-workshop.zip \
    .Rprofile \
    renv.lock \
    renv/activate.R \
    renv/settings.json \
    README.md \
    example_notebook.Rmd \
    data/ \
    ffa-workshop.Rproj
