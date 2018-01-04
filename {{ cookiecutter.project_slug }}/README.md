# {{ cookiecutter.project }}

{{ cookiecutter.project_short_description }}

## Get started
- [Install the Docker client](http://docs.docker.com)
- Start the notebook container by running `./start_notebook.sh`
- open a browser to http://localhost
{% if cookiecutter.platform_slug == 'jupyter' %}
- Open notebook.ipynb
- Choose your kernel (Python and R available by default)
{% else %}
- Log into RStudio with username `rstudio`, password `rstudio`
- Open notebook.Rmd
{% endif %}
- Read the project guidelines in the notebook
