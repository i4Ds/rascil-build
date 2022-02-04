wget https://gitlab.com/ska-telescope/external/rascil/-/blob/master/LICENSE

mkdir tmp
cd tmp
git clone https://gitlab.com/ska-telescope/external/rascil .
$PYTHON -m pip install . --no-deps
cd ..
rm -rf tmp
