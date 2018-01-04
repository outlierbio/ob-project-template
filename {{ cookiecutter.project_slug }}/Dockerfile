{% if cookiecutter.platform_slug == 'jupyter' %}
FROM jupyter/r-notebook
{% elif cookiecutter.platform_slug == 'rstudio' %}
FROM rocker/rstudio
{% elif cookiecutter.platform_slug == 'bioconductor' %}
FROM bioconductor/release_core2
{% endif %}

MAINTAINER {{ cookiecutter.full_name}} <{{ cookiecutter.email }}>

{% if cookiecutter.platform_slug == 'jupyter' %}
#######################
# Install common dependencies for Bioconductor and other R packages
USER root
RUN apt-get update && apt-get install -y \
	libicu-dev \
	libpcre3-dev \
	xorg-dev

USER $NB_USER
RUN conda install -c r r-xml
{% elif cookiecutter.platform_slug == 'bioconductor' %}
ADD install_bioc.r /src/
RUN Rscript /src/install_bioc.r
{% endif %}

ADD install_packages.r /src/
RUN Rscript /src/install_packages.r

