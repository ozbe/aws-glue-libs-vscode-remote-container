FROM amazon/aws-glue-libs:glue_libs_1.0.0_image_01

# JSON data support 
RUN wget https://s3-us-west-2.amazonaws.com/crawler-public/json/serde/json-serde.jar -P /home/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8/jars

# Copy notebooks
COPY notebooks /root/notebooks/

# Copy scripts
COPY scripts /root/scripts/

# Start Jupyter
CMD /root/scripts/jupyter_start.sh