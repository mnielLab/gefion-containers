## Build container
```
apptainer build --fakeroot chai1-061.sif chai1-061.def
```
## Run container example
```
apptainer exec --nv --bind $PWD:/work chai1-061.sif chai-lab fold --use-esm-embeddings /work/example.fasta /work/out/
```
