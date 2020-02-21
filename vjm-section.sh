#
# Foobar
#
# Foobar is a supa-dupa cool tool for making you development easier.
# Link: https://www.vjm.xyz

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_VJM_SHOW="${SPACESHIP_VJM_SHOW=true}"
SPACESHIP_VJM_PREFIX="${SPACESHIP_VJM_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_VJM_SUFFIX="${SPACESHIP_VJM_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VJM_SYMBOL="${SPACESHIP_VJM_SYMBOL="☁️  "}"
SPACESHIP_VJM_COLOR="${SPACESHIP_VJM_COLOR="white"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show vjm status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_vjm() {
  # If SPACESHIP_VJM_SHOW is false, don't show vjm section
  [[ $SPACESHIP_VJM_SHOW == false ]] && return

  # Check if aws command is available for execution
  # spaceship::exists aws || return

  # Show vjm section only when there are vjm-specific files in current
  # working directory.
  # Here glob qualifiers are used to check if files with specific extension are
  # present in directory. Read more about them here:
  # http://zsh.sourceforge.net/Doc/Release/Expansion.html
  # [[ -f vjm.conf || -n *.foo(#qN^/) || -n *.bar(#qN^/) ]] || return

  # Use quotes around unassigned local variables to prevent
  # getting replaced by global aliases
  # http://zsh.sourceforge.net/Doc/Release/Shell-Grammar.html#Aliasing
  local 'vjm_status'

  if [[ ! -z $AWS_PROFILE ]]; then
    vjm_status=$AWS_PROFILE
  elif [[ ! -z $AWS_DEFAULT_PROFILE ]]; then
    vjm_status=$AWS_DEFAULT_PROFILE
  fi

  # Exit section if variable is empty
  [[ -z $vjm_status ]] && return

  # Display vjm section
  spaceship::section \
    "$SPACESHIP_VJM_COLOR" \
    "$SPACESHIP_VJM_PREFIX" \
    "$SPACESHIP_VJM_SYMBOL$vjm_status" \
    "$SPACESHIP_VJM_SUFFIX"
}