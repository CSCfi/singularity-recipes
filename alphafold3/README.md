AlphaFold3 container adapted from the official container recipe and installation instructions.

- https://github.com/google-deepmind/alphafold3
- https://github.com/google-deepmind/alphafold3/blob/main/docs/installation.md

Roihu-GPU (`roihu/aarch64`):

```bash
module purge  # avoids polluting the module system within the container
```

```bash
apptainer run --bind=$(csc-common-bind) --nv alphafold3.sif uv run python3 /opt/alphafold3/run_alphafold.py --help
e
```

```bash
apptainer run --bind=$(csc-common-bind) --nv alphafold3.sif uv run python3 /opt/alphafold3/run_alphafold_data_test.py
```
