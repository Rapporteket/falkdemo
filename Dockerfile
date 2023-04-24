FROM rocker/r-ver:4.3.0

LABEL maintainer "Are Edvardsen <are.edvardsen@helse-nord.no>"

ARG GH_PAT
ENV GITHUB_PAT=${GH_PAT}

# system libraries of general use
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl3-gnutls \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libxml2-dev \
    libssl-dev \
    libmariadb-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install package dependencies
RUN R -e "install.packages(c('remotes'))" \
    && R -e "remotes::install_github('rapporteket/rapbase')" \
    && R -e "remotes::install_github('rapporteket/falkdemo')"

COPY rapbaseConfig.yml /opt/
CMD ["R", "-e", "options(shiny.port=3838,shiny.host='0.0.0.0'); falkdemo::run_app()"]
