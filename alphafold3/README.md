AlphaFold3 container adapted from the official container recipe and installation instructions.

- https://github.com/google-deepmind/alphafold3
- https://github.com/google-deepmind/alphafold3/blob/main/docs/installation.md

```bash
apptainer run --bind=$(csc-common-bind) alphafold3.sif uv run python3 /opt/alphafold3/run_alphafold.py
apptainer run --bind=$(csc-common-bind) alphafold3.sif uv run python3 /opt/alphafold3/run_alphafold_data_test.py
```
