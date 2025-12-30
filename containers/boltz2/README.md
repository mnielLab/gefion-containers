## Build container
```
apptainer build --fakeroot boltz2_offline.sif boltz2_offline.def
```
## Run container example
```
apptainer exec --nv --bind $PWD:/work/ --writable-tmpfs boltz2_offline.sif boltz predict /work/prot.yaml --cache /opt/boltz_cache --out_dir /work/out/
```
