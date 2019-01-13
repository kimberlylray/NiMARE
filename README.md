# NiMARE: Neuroimaging Meta-Analysis Research Environment
A Python library for coordinate- and image-based meta-analysis.

## Supported meta-analytic methods (`nimare.meta`)
- Coordinate-based methods (`nimare.meta.cbma`)
    - Kernel-based methods
        - Activation likelihood estimation (ALE)
        - Specific coactivation likelihood estimation (SCALE)
        - Multilevel kernel density analysis (MKDA)
        - Kernel density analysis (KDA)
    - Model-based methods (`nimare.meta.cbma.model`)
        - Bayesian hierarchical cluster process model (BHICP)
        - Hierarchical Poisson/Gamma random field model (HPGRF)
        - Spatial Bayesian latent factor regression (SBLFR)
        - Spatial binary regression (SBR)
- Image-based methods (`nimare.meta.ibma`)
    - Mixed effects general linear model (MFX-GLM)
    - Random effects general linear model (RFX-GLM)
    - Fixed effects general linear model (FFX-GLM)
    - Stouffer's meta-analysis
    - Random effects Stouffer's meta-analysis
    - Weighted Stouffer's meta-analysis
    - Fisher's meta-analysis

## Additional functionality
- Database extraction (`nimare.dataset.extract`)
    - NeuroVault
    - Neurosynth
    - Brainspell
    - PubMed abstract extraction
- Functional characterization analysis (`nimare.decode`)
    - BrainMap decoding
    - Neurosynth correlation-based decoding
    - Neurosynth MKDA-based decoding
    - Generalized correspondence latent Dirichlet allocation (GCLDA)

## Installation

### Local installation
```
python setup.py install
```

### Installation with Docker
To build the Docker image:
```
docker build -t tsalo/nimare-dev .
```

Alternatively, you can pull the image from Docker Hub:
```
docker pull tsalo/nimare-dev:latest
```

To run the Docker container:
```
docker run -it -v $PWD:/home/neuro/code/NiMARE -p8888:8888 tsalo/nimare-dev bash
```

Once inside the container, you can install NiMARE:
```
cd /home/neuro/code/NiMARE
python setup.py develop
```

You can open a notebook in the container:
```
jupyter notebook --ip=0.0.0.0
```

This will print several lines, including two like the following:

```
[I 15:41:49.882 NotebookApp] The Jupyter Notebook is running at:
[I 15:41:49.883 NotebookApp] http://(3b5cff748bb0 or 127.0.0.1):8888/?token=8387d124d010ff22cbffd6c2a5208d0a106c2194ba88c6f8
```

Copy the address into a web browser, but only keep 127.0.0.1 from the parentheses.
E.g.,: `http://127.0.0.1:8888/?token=8387d124d010ff22cbffd6c2a5208d0a106c2194ba88c6f8`

## Contributing

Please see our [contributing guidelines](https://github.com/neurostuff/NiMARE/blob/master/CONTRIBUTING.md) for more information on contributing
to NiMARE.

We ask that all contributions to `NiMARE` respect our [code of conduct](https://github.com/neurostuff/NiMARE/blob/master/CODE_OF_CONDUCT.md).
