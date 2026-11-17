#!/bin/bash



#
mkdir -p ~/exam_results/audit
cd ~/exam_results/audit
touch notes.txt
pwd > cwd.txt

#
cut -d: -f1 /etc/passwd > users.txt
grep "/bin/bash" /etc/passwd | cut -d: -f1 > bash_users.txt
sed 's#/bin/bash#/usr/bin/zsh#g' /etc/passwd | head -n 5 > shell_preview.txt

#
uname -r -s > sysinfo.txt
arch >> sysinfo.txt
head -n 3 /etc/group > group_summary.txt
tail -n 2 /etc/group >> group_summary.txt

#
find /etc -type f -name "*.conf" > conf_files.txt
du -ah /var/log | sort -hr | head -n 10 > top_logs.txt

#
cp /etc/hosts hosts.bak
chmod 600 hosts.bak
ls -l hosts.bak > hosts_perm.txt

#
mkdir -p ../audit_backup && cp -r . ../audit_backup

#
find . -maxdepth 1 -type f -name "*.txt"  ! -name "hosts_perm.txt"  ! -name "notes.txt" -delete

