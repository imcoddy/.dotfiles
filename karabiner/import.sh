#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.app_term_meta_movement 1
/bin/echo -n .
$cli set remap.optionR2optionR_commandSpace 1
/bin/echo -n .
$cli set private.swap_leftcommand_and_leftoption_with_minila 1
/bin/echo -n .
$cli set private.filco.app_to_space_command_l 1
/bin/echo -n .
$cli set remap.shiftR2shiftR_capslock 1
/bin/echo -n .
$cli set option.vimode_fn_hjkl 1
/bin/echo -n .
$cli set remap.hjkl_arrow 1
/bin/echo -n .
$cli set private.remap.input_source 1
/bin/echo -n .
$cli set remap.space_to_command 1
/bin/echo -n .
$cli set option.vimode_fn_hjkl_rapid 1
/bin/echo -n .
$cli set option.extra_cursor_optionL_kjhl 1
/bin/echo -n .
$cli set remap.controlL2controlL_escape 1
/bin/echo -n .
$cli set private.appkey_and_numberkey_consumerkey_with_minila 1
/bin/echo -n .
$cli set remap.shiftEscape2tilde 1
/bin/echo -n .
/bin/echo
ln -sfv ~/.dotfiles/karabiner/private.xml ~/Library/Application\ Support/Karabiner/private.xml
