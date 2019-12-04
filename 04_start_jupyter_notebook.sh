DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
VENV="venv"
source $DIR/$VENV/bin/activate
jupyter notebook
