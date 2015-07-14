#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.extra_cursor_optionL_kjhl 1
/bin/echo -n .
$cli set remap.doublepresscommandQ 1
/bin/echo -n .
$cli set private.general.control_to_jump_by_word 1
/bin/echo -n .
$cli set private.general.control_np_to_updown 1
/bin/echo -n .
$cli set remap.optionR2optionR_commandSpace 1
/bin/echo -n .
$cli set private.general.control_r_to_option_arrow_right 1
/bin/echo -n .
$cli set private.filco.volume_control 1
/bin/echo -n .
$cli set remap.hhkmode 1
/bin/echo -n .
$cli set option.vimode_fn_hjkl_rapid 1
/bin/echo -n .
$cli set remap.hhkmode_vi_cursor 1
/bin/echo -n .
$cli set remap.shiftDelete2tilde 1
/bin/echo -n .
$cli set private.filco.app_to_space_command_l 1
/bin/echo -n .
$cli set private.remap.input_source 1
/bin/echo -n .
$cli set private.filco.swap_backquote_and_backslash 1
/bin/echo -n .
$cli set parameter.holdingkeytokey_wait 400
/bin/echo -n .
$cli set private.general.control_v_to_option_arrow_left 1
/bin/echo -n .
$cli set remap.controlL2controlL_escape 1
/bin/echo -n .
$cli set remap.shiftR2shiftR_capslock 1
/bin/echo -n .
$cli set option.vimode_fn_hjkl 1
/bin/echo -n .
$cli set remap.app_term_meta_movement 1
/bin/echo -n .
$cli set remap.space_to_command 1
/bin/echo -n .
$cli set private.filco.swap_command_l_and_option_l 1
/bin/echo -n .
$cli set remap.shiftEscape2tilde 1
/bin/echo -n .
$cli set private.filco.forward_delete_to_command_r 1
/bin/echo -n .
$cli set remap.hjkl_arrow 1
/bin/echo -n .
/bin/echo
ln -sfv ~/.dotfiles/karabiner/private.xml ~/Library/Application\ Support/Karabiner/private.xml
