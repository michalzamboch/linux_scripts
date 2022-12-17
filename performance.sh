#!/bin/bash

clear
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

#powersave mode
#echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
