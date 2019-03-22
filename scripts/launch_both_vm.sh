#!/usr/bin/env bash

mod_loaded="$(lsmod | grep "vmnet\|vmmon\|vmw_vmci" | wc -l)"

if [[ "$mod_loaded" -ne "3" ]]; then
	sudo modprobe -a vmnet vmmon vmw_vmci && sudo vmware-networks --start
    printf "Sleeping for 3 seconds..."
    sleep 3
    printf "Done sleeping"
fi

vmplayer -M $HOME/vmware/M1/M1.vmx &
vmplayer -M $HOME/vmware/M2/M2.vmx &

