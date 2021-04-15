FROM amazon/aws-glue-libs:glue_libs_1.0.0_image_01

# ms-python.python dependencies
RUN pip3 --disable-pip-version-check --no-cache-dir install \
    pylint flake8 autopep8 black yapf mypy pydocstyle pycodestyle bandit pipenv virtualenv

# Update sourcelist to fix apt-get update
# https://unix.stackexchange.com/questions/508724/failed-to-fetch-jessie-backports-repository
RUN echo 'deb http://archive.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list \
    && echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf

# AWS CLI dependencies
RUN apt-get update && apt-get -y install --no-install-recommends \
    less groff

# JSON data support 
RUN wget https://s3-us-west-2.amazonaws.com/crawler-public/json/serde/json-serde.jar -P /home/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8/jars

# Setup glue to avoid re-running setup with each glue* command and
# enable using Spark and pytest commands directly
RUN chmod +x /home/aws-glue-libs/bin/glue-setup.sh \
    && bash -x /home/aws-glue-libs/bin/glue-setup.sh
RUN echo 'export SPARK_CONF_DIR=/home/aws-glue-libs/conf' >> /root/.bashrc
RUN echo 'export PYTHONPATH=/home/aws-glue-libs/PyGlue.zip:$PYTHONPATH' >> /root/.bashrc

# Add Spark commands to $PATH
RUN echo 'export PATH=$PATH:/home/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8/bin/' >> /root/.bashrc

# Copy notebooks
COPY notebooks /root/notebooks/

# Copy scripts
COPY scripts /root/scripts/

# Start Jupyter
CMD /root/scripts/jupyter_start.sh