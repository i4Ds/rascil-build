CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh

conda create -y -n testpy38 python=3.8
conda activate testpy38
conda install -y -c i4ds -c conda-forge rascil=${{ env.PKG_VERSION }}
python -c "import rascil"
python -c "from rascil.apps import rascil_imager"

conda create -y -n testpy39 python=3.9
conda activate testpy39
conda install -y -c i4ds -c conda-forge rascil=${{ env.PKG_VERSION }}
python -c "import rascil"
python -c "from rascil.apps import rascil_imager"
