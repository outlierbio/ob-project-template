# {{ cookiecutter.project }}

{{ cookiecutter.project_short_description }}

## Get started
First, [install the Docker client](http://docs.docker.com) for your system.

Then, in a terminal, change to the project directory (the one containing this file) and:

- Test the installation using `docker info`
- Run `python build.py` to download data and run any preprocessing steps
- Start the notebook container by running `sh start_notebook.sh` from this directory

Now your notebook server is running! Open a browser and point to `http://localhost`. Next,
{% if cookiecutter.platform_slug == 'jupyter' %}
- Enter the password token displayed on the terminal
- Click on `notebook.ipynb` to open{% else %}
- Log into RStudio with username `rstudio`, password `rstudio`
- Open `notebook.Rmd`{% endif %}
- If you're accessing a finished notebook, you can browse, edit the code, and execute the cells to reproduce or alter the figures.
- If you're starting a new notebook, read the project guidelines in the notebook and start coding!
