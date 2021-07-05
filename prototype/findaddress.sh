#!/bin/sh

id="06cb:00da"
get_bus="lsusb -d ${id} | sed -e 's/.*Bus \(.*\) Device.*/\1/'"
get_device="lsusb -d ${id} | sed -e 's/.*Device \(.*\): .*/\1/'"
bus=`eval "$get_bus"`
device=`eval "$get_device"`
device_path="/dev/bus/usb/$bus/$device"
echo $device_path