# AIDE — Hash Configuration (SHA-512)

## Goal
Configure AIDE to monitor the integrity of the audit subsystem binaries
(auditd, auditctl, ausearch, etc.) using SHA-512 instead of the package's
default algorithm, thereby reducing the risk of collisions and aligning
with CIS Benchmark recommendations for Ubuntu. These binaries are
common targets for anti-forensics attacks, an attacker who modifies
them could erase or hide traces of an intrusion.

## Context
AIDE was already installed with the default configuration, which uses weaker hashes in the monitoring rules for the audit binaries.

## Step-by-Step

### 1. Verification of configuration file permissions and existence
    ls -l /etc/aide/aide.conf
Confirms the file exists and only root can overwrite it - if any user could edit those rules, it would be possible to hide malware from being monitored.

### 2. Verification of current hash rules
    sudo egrep '(\/sbin\/(audit|au))' /etc/aide/aide.conf
Filters the configuration file to show only the lines pertaining to the audit binaries, revealing which hash algorithm was being used.

### 3. Hash rules change
    sudo nano /etc/aide/aide.conf
The audit binary rules have been modified to include sha512
instead of the default algorithm.

### 4. Db regen
    sudo aideinit
This is necessary because the AIDE database only reflects the state at the time it was generated—editing aide.conf does not update an existing database.

## Troubleshooting

**Error:** `missing configuration (use '--config' '--before' or '--after' ...)`
**Root cause:** the binary `aide` by default looks for configuration in
`/etc/aide.conf`, but on Ubuntu/Debian it's in `/etc/aide/aide.conf`.
**Solution:** specify the path manually `--config`.

**Error:** `open(read-only) failed for file '/var/lib/aide/aide.db'`
**Root cause:**  `aideinit` generated database as `aide.db.new`, but didn't
rename it automatically to  `database_in=` in config.
**Solution:** `sudo cp /var/lib/aide/aide.db.new /var/lib/aide/aide.db`

**Error:** `aide.wrapper: command not found`
**Root cause:** this wrapper script isn't available on this 
package version `aide-common`.
**Solution:** use `aide --config /etc/aide/aide.conf --check` directly.

## Final result
![System hash configuration check](screenshots/system%20hash%20configuration%20check.png)

## References
- https://www.cisecurity.org/benchmark/ubuntu_linux
- `man aide.conf`
