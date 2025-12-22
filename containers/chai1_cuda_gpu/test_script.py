from chai_lab.utils.paths import chai1_component, downloads_path, download_if_not_exists
from chai_lab.data.dataset.embeddings import esm as esm_mod
local_esm_path = downloads_path.joinpath("esm/traced_sdpa_esm2_t36_3B_UR50D_fp16.pt")
print(local_esm_path)
print(local_esm_path.is_file())
