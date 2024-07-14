FROM python:3.11

RUN pip install finlab
RUN pip install ta-lib-bin
RUN pip install git+https://github.com/microsoft/qlib.git@v0.9.5
RUN pip install xgboost
RUN pip install lightgbm
RUN pip install catboost
RUN pip install ipython

WORKDIR /app
