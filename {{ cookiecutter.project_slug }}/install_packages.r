{% if cookiecutter.platform_slug == 'bioconductor' %}
source('http://bioconductor.org/biocLite.R');
biocLite(c(
  'Biobase'
))
{% endif %}

install.packages(c(
  'tidyverse'
), repos='http://cran.r-project.org')