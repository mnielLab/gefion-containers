# gefion-containers
Code and guides for setting up apptainer images on Gefion HPC to run AlphaFold, Chai, BepiPocket, Boltz, Boltzgen

## Create any container 

```
apptainer build --fakeroot <image_name>.sif <container_name>.def
```

### Run a container
```
apptainer run --nv <image_name>.sif
```
