FROM jupyter/r-notebook
MAINTAINER Jake Feala <jake@outlierbio.com>

#######################
# Install common dependencies for Bioconductor and other R packages
USER root
RUN apt-get update && apt-get install -y \
	libicu-dev \
	libpcre3-dev \
	xorg-dev

USER $NB_USER
RUN conda install -c r r-xml


##########################
# Install additional dependencies here
RUN Rscript -e 'install.packages("pheatmap", repo="http://cran.us.r-project.org")'