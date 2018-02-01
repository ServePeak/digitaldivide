# This script automatically configures the system to work as the emulated household
# Run it as: bash emulate_house.sh

# Remove existing configurations
sudo tc qdisc del dev enp3s0f1 root > /dev/null 2>&1
sudo tc qdisc del dev enx000ec688fc5c root > /dev/null 2>&1

# Prints and runs configurations
OUTPUT="$(python -W ignore src/digitaldivideutil.py --netem-down --netem-up --json)"
UP="$(printf "%s\n" "${OUTPUT}" | head -n -2 | tail -1)"
DOWN="$(printf "%s\n" "${OUTPUT}" | head -n -1 | tail -1)"
eval $UP
eval $DOWN
printf "%s\n" "${OUTPUT}"
