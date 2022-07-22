from rocker/r-base:latest

run apt-get update && \
  apt-get install -y libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev zlib1g-dev
run apt-get install -y r-cran-devtools  
run R -e "install.packages(c('testthat', 'pkgload','roxygen2'))"
run R -e "library(devtools)"
