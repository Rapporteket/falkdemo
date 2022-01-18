
# falkdemo

<!-- badges: start -->
<!-- badges: end -->

The goal of falkdemo is to test user data provided by an external login service through shinyproxy

## Installation

You can install the development version of falkdemo from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rapporteket/falkdemo")
```

## Example

Run this app in an R terminal:

``` r
library(falkdemo)
run_app()
```

Run as a docker container from a system terminal (_e.g._ bash):
```bash
docker run --rm -p 3838:3838 rapporteket/falkdemo
```
and navigate your browser to [localhost:3838](localhost:3838).

Use docker-compose to run the same application with example environmental variables, from as system terminal (_e.g._ bash):
```bash
docker-compose up
```
and navigate your browser to [localhost:3838](localhost:3838).

