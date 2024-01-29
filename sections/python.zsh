#
# Python
#
# Python is an interpreted high-level programming language
# Link: https://python.org/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_PYTHON_SHOW="${SPACESHIP_PYTHON_SHOW=true}"
SPACESHIP_PYTHON_ASYNC="${SPACESHIP_PYTHON_ASYNC=true}"
SPACESHIP_PYTHON_PREFIX="${SPACESHIP_PYTHON_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_PYTHON_SUFFIX="${SPACESHIP_PYTHON_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PYTHON_SYMBOL="${SPACESHIP_PYTHON_SYMBOL="🐍 "}"
SPACESHIP_PYTHON_COLOR="${SPACESHIP_PYTHON_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current version of Python
spaceship_python() {
  [[ $SPACESHIP_PYTHON_SHOW == false ]] && return

  spaceship::exists python3 || return

  [[ -n *.py(#qN^/) ]] || return

  # Extract python version
  local py_version=$(python3 -V 2>&1 | spaceship::grep -oE '([0-9]+\.)([0-9]+\.)?([0-9]+)' | head -n 1)
  [[ -z $py_version ]] && return

  spaceship::section \
    --color "$SPACESHIP_PYTHON_COLOR" \
    --prefix "$SPACESHIP_PYTHON_PREFIX" \
    --suffix "$SPACESHIP_PYTHON_SUFFIX" \
    --symbol "$SPACESHIP_PYTHON_SYMBOL" \
    "v$py_version"
}
