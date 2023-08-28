# !/bin/bash

python3 setup.py sdist
pip install virtualenv
mkdir ~/packages
virtualenv ~/packages/venv
source ~/packages/venv/bin/activate
pip install pypiserver
mv ./dist/* ~/packages/
pypi-server run -p 8084 ~/packages
rm -r dist
rm -r ~/packages
rm -r tsvi_package.egg-info