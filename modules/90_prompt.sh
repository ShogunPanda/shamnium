#!/bin/sh
#
# This file is part of shamnium. Copyright (C) 2013 and above Shogun <shogun@cowtech.it>.
# Licensed under the MIT license, which can be found at https://choosealicense.com/licenses/mit.
#

# PROMPT
prompt_date="\D{%Y-%m-%d %H:%M}" # format as in strftime
prompt_hostname="\h"
prompt_username="\u"
prompt_dir="\w"
prompt_number="\!"
prompt_type="\$"

# # SET USERNAME PROMPT COLOR
prompt_username_color="${SHAMNIUM_TEXT_COLOR_FG_GREEN}"
[ "$UID" = "0" ] && prompt_username_color="${SHAMNIUM_TEXT_COLOR_FG_RED}"

# # SET THE PROMPT
PS1="${SHAMNIUM_TEXT_BOLD}${SHAMNIUM_TEXT_COLOR_FG_YELLOW}[${SHAMNIUM_TEXT_COLOR_FG_WHITE}${prompt_date}${SHAMNIUM_TEXT_COLOR_FG_YELLOW}]${SHAMNIUM_TEXT_DEFAULT}" # DATE
PS1="${PS1} ${SHAMNIUM_TEXT_COLOR_FG_CYAN}${prompt_dir}${SHAMNIUM_TEXT_COLOR_FG_MAGENTA}\$(git_prompt)${SHAMNIUM_TEXT_DEFAULT}"
PS1="${PS1}\n"
PS1="${PS1}${SHAMNIUM_TEXT_BOLD}${SHAMNIUM_TEXT_COLOR_FG_YELLOW}[${prompt_username_color}${prompt_username}@${prompt_hostname}${SHAMNIUM_TEXT_COLOR_FG_MAGENTA}\$(rvm_prompt)${SHAMNIUM_TEXT_COLOR_FG_YELLOW}]${SHAMNIUM_TEXT_DEFAULT}" # HOST
PS1="${PS1} ${SHAMNIUM_TEXT_BOLD}${SHAMNIUM_TEXT_COLOR_FG_YELLOW}${prompt_type}> ${SHAMNIUM_TEXT_DEFAULT}" 

PS2="${SHAMNIUM_TEXT_BOLD}${SHAMNIUM_TEXT_COLOR_FG_YELLOW}» ${COLOR_DEFAULT}"

# EXPORT PROMPT
export PS1 PS2