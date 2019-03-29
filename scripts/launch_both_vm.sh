#!/usr/bin/env bash

source "$(dirname "$0")/modprobe.sh"

vmplayer -M $HOME/vmware/M1/M1.vmx &
vmplayer -M $HOME/vmware/M2/M2.vmx &

