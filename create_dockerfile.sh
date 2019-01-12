#!/bin/sh

set -e

# Generate Dockerfile.
docker run --rm kaczmarj/neurodocker:0.4.3 generate docker \
    --base=neurodebian:stretch-non-free \
    --pkg-manager=apt \
    --install fsl nano \
    --user=neuro \
    --add-to-entrypoint "source /etc/fsl/fsl.sh" \
    --miniconda \
      miniconda_version=4.3.31 \
      conda_install="python=3.6 jupyter jupyterlab jupyter_contrib_nbextensions
                     matplotlib scikit-learn seaborn numpy scipy pandas
                     statsmodels nibabel nipype" \
      pip_install="nilearn pybids duecredit pymc3" \
      create_env="neuro" \
      activate=true \
    --run 'mkdir -p ~/.jupyter && echo c.NotebookApp.ip = \"0.0.0.0\" > ~/.jupyter/jupyter_notebook_config.py' \
    --workdir /home/neuro > Dockerfile
