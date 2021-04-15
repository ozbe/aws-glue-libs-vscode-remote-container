#!/bin/bash
nohup /home/livy/bin/livy-server &
/usr/local/bin/jupyter notebook --allow-root --NotebookApp.token='' --NotebookApp.password='' --no-browser --ip=0.0.0.0 --NotebookApp.allow_remote_access=True --NotebookApp.disable_check_xsrf=True