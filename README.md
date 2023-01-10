# Windows-acquisition-script
Batch script that performs a forensic triage to obtain valuable information from a Windows system.

The script, when executed, extracts and saves in the Evidence directory a file with the following information:

System date and time.
Ip of all network devices in the system.
DNS cache.
Established connections.
established netbios connections.
list of applications with open ports.
Routing table.
Save hosts file.
Stored wifi profiles (netsh command).
List of mapped drives (net use).
List of c:\ directories sorted by modification date.
List of c:\ directories sorted by last access date.
List of c:\ directories sorted by creation date.
