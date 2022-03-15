cmd=curl
[[ $(type -P "$cmd") ]] && echo "$cmd is in PATH"  ||
    { echo "$cmd is not installed. Please install $cmd and try the installation again ex.: (conda install $cmd)" 1>&2; exit 1; }

DATA_DIRECTORY="$PREFIX/rascil_data"
mkdir $DATA_DIRECTORY
curl https://ska-telescope.gitlab.io/external/rascil/rascil_data.tgz -o rascil_data.tgz
tar zxf rascil_data.tgz -C $DATA_DIRECTORY
conda env config vars set RASCIL_DATA="$DATA_DIRECTORY"

