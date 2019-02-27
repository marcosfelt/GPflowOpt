
from invoke import task

@task 
def setup(j):
    j.run("jupyter labextension install @pyviz/jupyterlab_pyviz")