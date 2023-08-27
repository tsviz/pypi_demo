# !/bin/bash

python setup.py sdist
pip install virtualenv
mkdir ~/packages
cd packages
virtualenv venv
source venv/bin/activate
pip install pypiserver
mv ./dist/*.tar.gz ~/packages/
pypi-server -p 8080 ~/packages
rm -r dist
rm -r ~/packages
rm -r tsvi_package.egg-info
rm -r venv