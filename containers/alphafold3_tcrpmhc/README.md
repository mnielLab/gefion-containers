## Build container
```
apptainer build --fakeroot alphafold3_tcrpmhc_cuda126-py312.sif alphafold3_tcrpmhc_cuda126-py312.def
```
## Run container example
```
bash run_alphafold3_example.sh alphafold3_tcrpmhc_cuda126-py312.sif test_proteins/1ao7_A_C_D_E/ ./test_out/
```
