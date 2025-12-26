## Build container
```
apptainer build --fakeroot boltzgen_offline.sif boltzgen_offline.def
```
## Run container example
```
apptainer exec --nv --writable-tmpfs --bind $PWD:/work boltzgen_offline.sif boltzgen run /work/example.yaml --output /work/out2/ --protocol protein-anything --num_designs 10 --budget 2 --cache /cache
```
