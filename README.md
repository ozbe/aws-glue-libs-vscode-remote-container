# Local AWS Glue Libs using Visual Studio Code Remote - Containers Extension

## Configure Dev Container

1. Clone repo
2. Open VS Code command window with CMD+SHIFT+P and run `Remote-Containers: Reopen in Container` command. _Note_ that the AWS Glue libraries base image is pulled on the first run. Depending on your internet, this may take a while.

## Create Jupyter Notebook

Inside Dev Container
1. Open VS Code command window with CMD+SHIFT+P and run `Jupyter: Specify Local or Remote Jupyter server for connections`
2. Enter `http://localhost:8888`
3. Restart VS code from prompt
4. Open VS Code command window with CMD+SHIFT+P and run `Jupyter: Create New Blank Notebook`

## References

- [Developing AWS Glue ETL jobs locally using a container](https://aws.amazon.com/blogs/big-data/developing-aws-glue-etl-jobs-locally-using-a-container/)
- [Jupyter Extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
