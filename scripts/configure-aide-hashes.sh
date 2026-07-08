$ ls -l /etc/aide/aide.conf
$ sudo egrep '(\/sbin\/(audit|au))' /etc/aide/aide.conf
$ sudo nano /etc/aide/aide.conf
$ sudo egrep '(\/sbin\/(audit|au))' /etc/aide/aide.conf
/sbin/auditctl p+i+n+u+g+s+b+acl+xattrs+sha512
/sbin/auditd p+i+n+u+g+s+b+acl+xattrs+sha512
/sbin/ausearch p+i+n+u+g+s+b+acl+xattrs+sha512
/sbin/aureport p+i+n+u+g+s+b+acl+xattrs+sha512
/sbin/autrace p+i+n+u+g+s+b+acl+xattrs+sha512
/sbin/augenrules p+i+n+u+g+s+b+acl+xattrs+sha512
$ sudo aideinit

# First, I checked if the AIDE configuration file existed and if its permissions were correct (should only be writable by root), then I verified if AIDE was properly configured to use cryptographic mechanisms to protect the integrity of the audit security tools.
# Since it wasn't, I edited aide.conf's hash rules to SHA-512 using nano, and finally regenerated the database so it now enforces the new cryptographic hashing rules using SHA-512.
