#!/vendor/bin/sh

block_by_name=/dev/block/by-name
utags=${block_by_name}/utags
utags_backup=${block_by_name}/utagsBackup

# Set correct permissions for UTAGS
/vendor/bin/chown -L root:system $utags
/vendor/bin/chown -L root:system $utags_backup
/vendor/bin/chmod -L 0660 $utags
/vendor/bin/chmod -L 0660 $utags_backup

# HOB/DHOB
hob=${block_by_name}/hob
dhob=${block_by_name}/dhob
if [ -f $hob ] || [ -L $hob ]; then
/vendor/bin/chown -L radio:radio $hob
/vendor/bin/chmod -L 0660 $hob
fi
if [ -f $dhob ] || [ -L $dhob ]; then
/vendor/bin/chown -L radio:radio $dhob
/vendor/bin/chmod -L 0660 $dhob
fi

# CLOGO
clogo=${block_by_name}/clogo
if [ -f $clogo ] || [ -L $clogo ]; then
/vendor/bin/chown -L root:vendor_tcmd $clogo
/vendor/bin/chmod -L 0660 $clogo
fi

#CID
cid=${block_by_name}/cid
/vendor/bin/chown -L root:vendor_tcmd $cid
/vendor/bin/chmod -L 0660 $cid

#BL logs
logs=${block_by_name}/logs
if [ -f $logs ] || [ -L $logs ]; then
/vendor/bin/chown -L root:system $logs
/vendor/bin/chmod -L 0640 $logs
fi
