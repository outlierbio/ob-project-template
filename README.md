# Outlier Bio project template

This is a [cookiecutter](https://cookiecutter.readthedocs.io/en/latest/index.html) template for data science projects. It sets up stubs for:

- **standard folder system** with `README.md` descriptions within each folder
- **Luigi build pipeline**, `build.py`, for downloads and batch preprocessing
- **Dockerized notebook server** for either Jupyter, RStudio, or RStudio with [Bioconductor](http://www.bioconductor.org/) packages pre-installed. - **computational notebook** to run your analysis, either `notebook.ipynb` (if you use Jupyter) or `notebook.Rmd` (if you prefer RMarkdown).

Docker allows you to completely specify your enviroment so your analysis is fully reproducible. Just make sure to add all dependencies (e.g., apt-get for system packages, conda for Python, CRAN or Bioconductor for R) to the Dockerfile and, if applicable, the `install_packages.r` script used by the Dockerfile.

You can choose the server platform during initiation of the `cookiecutter` script, which will then adjust the Dockerfile accordingly.

## Get started
From a terminal, change to the directory you want to hold the project folder, and run cookiecutter:

	`$ cookiecutter /path/to/ob-project-template`
	
Fill in the prompts (your name and email, project name and description, and the flavor of notebook platform) and it will be created for you! Be sure to double-check the auto-generated project slug and fix it if necessary–this will be the name of the folder.