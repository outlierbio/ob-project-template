FROM jupyter/notebook
MAINTAINER Jake Feala <jake@outlierbio.com>

# Install R and the R kernel for Jupyter notebooks
RUN sudo apt-get update &&
    sudo apt-get install r-base
RUN Rscript -e "update.packages()" \
            -e "install.packages(c('rzmq','repr','IRkernel','IRdisplay'), repos = c('http://irkernel.github.io/', getOption('repos')))" \
            -e "IRkernel::installspec()"

# Install additional dependencies here