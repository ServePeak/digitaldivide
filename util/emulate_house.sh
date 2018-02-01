# This script automatically configures the system to work as the emulated household
# Run it as: bash emulate_house.sh

# Remove existing configurations
sudo tc qdisc del dev enp3s0f1 root
sudo tc qdisc del dev enx000ec688fc5c root

# Prints and runs configurations
