## Build container
```
apptainer build --fakeroot alphafold3_offline_cuda126-py312.sif alphafold3_offline_cuda126-py312.def
```
## Run container example
```
bash run_alphafold3_example.sh alphafold3_offline_cuda126-py312.sif test_proteins/1e6j_ag_P_ab_L_H_af3_no_msa_no_template/ ./test_out/
```
