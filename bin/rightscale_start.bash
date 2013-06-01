#!/bin/bash

. /opt/rightscale/etc/init.d/rightscale_functions

logger -t RightScale "Rightscale Service start."
check_invoking_user_permissions
init_os_state
install_patch_if_needed 0
init_cloud_state 1
check_for_rightscale
check_boot_state
configure_proxy
ensure_sane_hostname
ensure_sudo_privilege
create_proxy_config_file
configure_proxy
install_patch_if_needed 1