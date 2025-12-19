# gefion-containers
Code and guides for setting up apptainer containers on Gefion HPC to run AlphaFold, Chai, BepiPocket, Boltz, Boltzgen

## Create any container 

```
apptainer build --fakeroot <container_name>.sif <container_name>.def
```

### Run a container
```
apptainer run --nv <container_name>.sif
```
