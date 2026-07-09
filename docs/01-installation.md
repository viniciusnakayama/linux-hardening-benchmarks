# AIDE Installation

## Goal
To effectively use the AIDE (Advanced Intrusion Detection System) it is needed to install its package first. the AIDE is important because it can act as a silent watchdog against unauthorized system tampering, creating a verified baseline of file attributes (like permissions, sizes, and cryptographic hashes), allowing administrators to detect hidden backdoors, rootkits, or altered configurations

## Context
Before installation, the AIDE package was not installed in the system.

## Step by Step

### 1. Verify current system packages state
'$ sudo apt update'

Before installing the AIDE package, I verified the packages already installed on the system that might needed updates. Since there were around to 40-50 packages needing so, I used the following command to update all of them at once:

'sudo apt upgrade'

And then, finally, installed the AIDE packages with the following command (used -y so that all configuration questions asking yes or no would be automatically set with yes):

'$ sudo apt install aide -y'

### 2. Why they were important
They were important to install the AIDE system that later will endure the system.

### 3. Confirmation
'dpkg -s aide'
Confirmed if the AIDE package was succesfully installed and found on the system.

## Final result
![Successful package installation](screenshots/successful%20package%20installation.png)

## References
https://www.cisecurity.org/benchmark/ubuntu_linux
