{% if cookiecutter.platform_slug == 'jupyter' %}
FROM jupyter/r-notebook
{% elif cookiecutter.platform_slug == 'rstudio' %}
FROM rocker/rstudio
{% elif cookiecutter.platform_slug == 'shiny' %}
FROM rocker/shiny
{% elif cookiecutter.platform_slug == 'bioconductor' %}
FROM bioconductor/release_core2
{% endif %}

MAINTAINER {{ cookiecutter.full_name}} <{{ cookiecutter.email }}>

{% if cookiecutter.platform_slug == 'jupyter' %}
USER root
{% endif %}

# System packages
RUN apt-get update -y && apt-get install -y \
	libicu-dev \
	libpcre3-dev \	
	libpq-dev \
	libssl-dev \
	libxml2-dev \
	xorg-dev

{% if cookiecutter.platform_slug == 'jupyter' %}
USER $NB_USER
RUN conda install -c r r-xml
{% endif %}

# Custom R packages
ADD install_packages.r /src/
RUN Rscript /src/install_packages.r

