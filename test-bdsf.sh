CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh

packages=(
    "aotools"
    "astropy"
    "astroplan"
    "bdsf>=1.10"
    "bokeh"
    "configparser"
    "dask"
    "dask-memusage"
    "distributed"
    "ducc0"
    "gitpython"
    "python-graphviz"
    "h5py"
    "matplotlib"
    "numpy"
    "pandas"
    "paramiko"
    "photutils"
    "python-casacore"
    "python-gitlab"
    "reproject"
    "scipy"
    "tabulate"
    "xarray"
    "zarr")

conda create -y -n test_bdsf python=3.8
conda activate test_bdsf
conda install -y -c i4ds -c conda-forge bdsf

python -c "import bdsf" || exit 1

for i in "${packages[@]}"
do
  echo "Installing $i"
  conda install -y -c i4ds -c conda-forge $i
  python -c "import bdsf" || exit 1
done