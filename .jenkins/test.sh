#!/bin/bash

set -o pipefail
set -ex

PYENV_HOME=$WORKSPACE/.pyenv/

# Delete previously built virtualenv
if [ -d $PYENV_HOME ]; then
	rm -rf $PYENV_HOME
fi

# Create virtualenv and install necessary packages
virtualenv --no-site-packages $PYENV_HOME
. $PYENV_HOME/bin/activate

pip install --upgrade pip

pip install --quiet tensorflow

python $WORKSPACE/src/tf_helloworld.py
