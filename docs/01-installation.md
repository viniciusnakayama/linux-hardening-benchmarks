# AIDE Installation

## Goal
To effectively use AIDE (Advanced Intrusion Detection Environment), it is
necessary to install its package first. AIDE is important because it acts
as a silent watchdog against unauthorized system tampering, creating a
verified baseline of file attributes (such as permissions, sizes, and
cryptographic hashes), allowing administrators to detect hidden backdoors,
rootkits, or altered configurations.

## Context
Before installation, the AIDE package was not installed on the system.

## Step by Step

### 1. Verify current system packages state
    sudo apt update
Before installing the AIDE package, I checked whether the packages
already installed on the system needed any updates. Since around 40-50
packages needed updating, I used the following command to update all of
them at once:

    sudo apt upgrade

Then, I installed the AIDE package with the following command (using
`-y` so that all yes/no configuration prompts would be automatically
answered with yes):

    sudo apt install aide -y

### 2. Why this was important
Updating the system beforehand ensures that AIDE is installed alongside
up-to-date dependencies and libraries, reducing the risk of installing
it on top of outdated or vulnerable packages. This step also establishes
a clean baseline before AIDE is configured to monitor the system's
integrity going forward.

### 3. Confirmation
    dpkg -s aide
Confirmed that the AIDE package was successfully installed and found on
the system.

## Final result
![Successful package installation](screenshots/successful%20package%20installation.png)

## References
https://www.cisecurity.org/benchmark/ubuntu_linux
