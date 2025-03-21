#!/bin/bash

connected=$(bluetoothctl devices Connected)

if [[ "$connected" == "" ]];
then
	bluetoothctl connect 80:C3:BA:3B:82:AE
else
	bluetoothctl disconnect 80:C3:BA:3B:82:AE
fi

