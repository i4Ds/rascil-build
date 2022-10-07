wget https://gitlab.com/ska-telescope/external/rascil/-/blob/master/LICENSE

pkgv=$(sed 's/dev//g' <<< "$PKG_VERSION")

mkdir tmp
cd tmp
git clone --branch "$pkgv" https://gitlab.com/ska-telescope/external/rascil .
$PYTHON -m pip install . --no-deps
cd ..
rm -rf tmp
