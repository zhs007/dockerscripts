docker stop jupyternotebook
docker rm jupyternotebook
docker run -d \
    -v $PWD/mydata:/mydata \
    --name jupyternotebook \
    -p 8888:8888 \
    jupyter/scipy-notebook