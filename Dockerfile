#FROM python:3.9.7-bullseye

#WORKDIR app/

#COPY ./app .
#RUN python -m pip install --upgrade pip
#RUN python -m pip install -r requirements.txt

#EXPOSE 8501
#CMD ["streamlit", "run", "app.py"]

FROM jupyter/datascience-notebook

WORKDIR app/

COPY ./app .

EXPOSE 8888

USER jovyan
RUN /usr/local/bin/start-notebook.sh --NotebookApp.token=''