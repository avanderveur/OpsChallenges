import os
import subprocess

# Execute bash commands
whoami_output = os.popen("whoami").read().strip()

# Retrieve IP information
ip_command = "ifconfig | grep 'inet ' | grep -v 127.0.0.1 | awk '{print $2}'"
ip_process = subprocess.Popen(ip_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
ip_output, _ = ip_process.communicate()
ip_output = ip_output.decode().strip()

# Retrieve hardware information
lshw_command = "system_profiler SPHardwareDataType"
lshw_process = subprocess.Popen(lshw_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
lshw_output, _ = lshw_process.communicate()
lshw_output = lshw_output.decode().strip()

# Print the results
print("Current user:", whoami_output)
print("IP information:\n", ip_output)
print("Hardware information:\n", lshw_output)
