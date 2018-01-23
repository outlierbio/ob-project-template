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
image_id=$(docker run -d --rm -p 80:$port -v "$(pwd):$home_dir" $image)
alias kill-container="docker kill $image_id"

echo "Notebook server running in container $image_id"
echo "Use alias 'kill-container' to kill it."
echo "" 
echo "If the notebook did not open automatically, point your browser to http://localhost."
echo "Login with:"
echo "user: rstudio"
echo "password: rstudio"
open http://localhost