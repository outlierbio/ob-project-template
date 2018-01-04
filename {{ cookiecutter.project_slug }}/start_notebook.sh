image={{ cookiecutter.project_slug }}
platform={{ cookiecutter.platform_slug }}

if [ $platform = "jupyter" ]; then
	port=8888
	home_dir=/home/jovyan/work
else
	port=8787
	home_dir=/home/rstudio
fi

docker build -t $image .
docker run --rm -p 80:$port -v "$(pwd):$home_dir" $image