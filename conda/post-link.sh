#cmd=curl
#[[ $(type -P "$cmd") ]] && echo "$cmd is in PATH"  ||
#    { echo "$cmd is NOT in PATH" 1>&2; exit 1; }

#cmd=wget
#[[ $(type -P "$cmd") ]] && echo "$cmd is in PATH"  ||
#    { echo "$cmd is NOT in PATH" 1>&2; exit 1; }


DATA_DIRECTORY="$PREFIX/rascil_data"
echo $DATA_DIRECTORY
mkdir $DATA_DIRECTORY
cd $DATA_DIRECTORY
curl https://ska-telescope.gitlab.io/external/rascil/rascil_data.tgz -o rascil_data.tgz
tar zxf rascil_data.tgz -C
conda env config vars set RASCIL_DATA="$DATA_DIRECTORY"

