# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::copilot::deps()
#
#>
######################################################################
p6df::modules::copilot::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::copilot::vscodes()
#
#>
######################################################################
p6df::modules::copilot::vscodes() {

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::copilot::external::brews()
#
#>
######################################################################
p6df::modules::copilot::external::brews() {

  p6df::core::homebrew::cli::brew::install copilot-cli

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::copilot::home::symlink()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::copilot::home::symlink() {

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::copilot::langs(_dir)
#
#  Args:
#	_dir -
#
#>
######################################################################
p6df::modules::copilot::langs() {
  local _dir="$1"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::copilot::aliases::init()
#
#>
######################################################################
p6df::modules::copilot::aliases::init() {

  p6_return_void
}

######################################################################
#<
#
# Function: str str = p6df::modules::copilot::prompt::mod()
#
#  Returns:
#	str - str
#
#  Environment:	 HOME P6_DFZ_PROFILE_GEMINI
#>
######################################################################
p6df::modules::copilot::prompt::mod() {

  local str
  if ! p6_string_blank "$P6_DFZ_PROFILE_COPILOT"; then
    local user=""

    if ! p6_string_blank "$user"; then
      str="copilot:\t\t  $P6_DFZ_PROFILE_COPILOT: $user"
    fi
  fi

  p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6df::modules::copilot::profile::on(profile)
#
#  Args:
#	profile -
#
#  Environment:	 P6_DFZ_PROFILE_GEMINI
#>
######################################################################
p6df::modules::copilot::profile::on() {
  local profile="$1"

  p6_env_export "P6_DFZ_PROFILE_GEMINI" "$profile"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::copilot::profile::off()
#
#  Environment:	 P6_DFZ_PROFILE_GEMINI
#>
######################################################################
p6df::modules::copilot::profile::off() {

  p6_env_export_un P6_DFZ_PROFILE_GEMINI

  p6_return_void
}
