# Outlier Bio analysis project template

This is the template for Outlier Bio microconsulting project folders in `ob-projects`. Each issue in `ob-projects` will have its own project folder based on this skeleton.

## Project guidelines
- Use this notebook (`./notebook.ipynb`) as your landing page. Supplementary material (such as external websites, additional notebooks, or figures) are allowed but must have a link from this page.
- Keep the analysis self-contained by adding dependencies to the Dockerfile.
- Put raw data in `./data` and processed data or figures in `./results`. Use [git lfs](https://git-lfs.github.com/) to track large files instead of adding to the git repo
- Use calls to data APIs instead of batch downloads when possible