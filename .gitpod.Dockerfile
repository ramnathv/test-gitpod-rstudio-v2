FROM rocker/verse:4.3.0
LABEL version=1


# Install R package dependencies
COPY ./DESCRIPTION /tmp/DESCRIPTION
RUN Rscript -e "devtools::install_deps('/tmp', upgrade = FALSE)"

COPY ./.rstudio/rstudio-prefs.json /etc/rstudio/rstudio-prefs.json