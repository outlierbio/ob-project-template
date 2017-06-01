# Start Jupyter notebook container
IMAGE_NAME=outlierbio/$(basename $(pwd))
docker build -t $IMAGE_NAME .
docker run --rm -p 8888:8888 -v "$(pwd):/home/jovyan/work" $IMAGE_NAME