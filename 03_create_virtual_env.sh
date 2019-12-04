#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VENV="venv"
sudo apt-get install python3-venv
python3 -m venv  $DIR/$VENV
source $DIR/$VENV/bin/activate
python -m pip install pymongo
python -m pip install wheel
python -m pip install  jupyterlab
