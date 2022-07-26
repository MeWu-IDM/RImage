from rocker/r-base:latest

run apt-get update && \
  apt-get install -y libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev zlib1g-dev
run apt-get install -y r-cran-devtools  
run R -e "install.packages(c('testthat', 'pkgload','roxygen2'))"
run R -e "library(devtools)"

## Install Pandoc
RUN wget --no-check-certificate -O /tmp/pandoc.deb https://github.com/jgm/pandoc/releases/download/2.19.1/pandoc-2.19.1-1-amd64.deb
RUN dpkg -i /tmp/pandoc.deb
RUN rm -f /tmp/pandoc.deb
