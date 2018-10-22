FROM jupyter/datascience-notebook
LABEL maintainer="Mácio Matheus Santos de Arruda (matheusmacio13@gmail.com)"


# Set the working directory to /app
WORKDIR /home/jovyan/work

# Copy the current directory contents into the container at /app
COPY requirements.txt /home/jovyan/work
RUN conda install -c conda-forge -y pystan==2.17.1.0 && conda install -y tensorflow==1.7.0
RUN pip install --upgrade pip && pip install -r requirements.txt && pip install git+https://www.github.com/keras-team/keras-contrib.git

EXPOSE 8888
