# Conda Management
function c-a ($name) { conda activate $name }
function c-d { conda deactivate }
function c-l { conda list }
function c-e { conda env list }
function c-i ($name) { conda install $name -y }
function c-u { conda update --all -y }
function c-r ($name) { conda remove $name -y }
function c-s ($name) { conda search $name }
function c-c { conda clean --all -y }

# Pip Management
function p-i ($name) { pip install $name }
function p-u ($name) { pip uninstall $name -y }
function p-l { pip list }
function p-s ($name) { pip search $name }
function p-f { pip freeze > requirements.txt }
function p-r { pip install -r requirements.txt }

# Python Commands
function py-v { python --version }
function py-V { python -V }
function py-c-env ($name) { python -m venv $name }

# Jupyter Notebook & Lab
function nb { jupyter notebook }
function lb { jupyter lab }