cmd=curl
[[ $(type -P "$cmd") ]] && echo "$cmd is in PATH"  ||
    { echo "$cmd is NOT in PATH" 1>&2; exit 1; }

mkdir rascil_data
cd rascil_data
curl https://ska-telescope.gitlab.io/external/rascil/rascil_data.tgz -o rascil_data.tgz
tar zxf rascil_data.tgz
cd data
#export RASCIL_DATA=`pwd`
conda env config vars set RASCIL_DATA=`pwd`
