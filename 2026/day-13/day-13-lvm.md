 # Day 13 – Linux Volume Management (LVM)

 ## Objective
 The goal of Day 13 was to understand Linux Logical Volume Management (LVM)
 and practice creating, mounting, and extending storage volumes dynamically.
 ## Environment
- OS: Linux (EBS  / EC2)
- Storage: Logocal Volume Storage
- User: root

### Step 1: Logical Voulmne Create(EBS& EC2)
 - create lvm(3) on ebs with same zone.
 - attach that volume to their instance.
 

## Step 2: Initial Storage Check
### Checked existing disks and LVM state
- lasblk:list the block and volume are attached
- pvs: look out physical volumne
- df -h

## Step 3: Physical Volume (PV)
### Using lvm for Physical volume
 - pvcreate /dev/nvme1n1 /dev/nvme2n1 /dev/nvme3n1
 - pvs: look out physical volumne

##  4: Volume Group (VG)
### Created a Volume Group named tws_vg.

#### Commands:
- vgcreate tws_vg /dev/nvme1n1 /dev/nvme2n1
- vgs 


##  5: Logical Volume (LV)
### Created a Logical Volume named tws_lv.

#### Commands:

- lvcreate -L 2G -n tws_lv devops-vg
- lvs

## Step 6: Format & Mount
### Formatted the LV and mounted it.

#### Commands:
 - mkdir /mnt/tws_lv_mount
 -  mkfs.ext4 /dev/tws_vg/tws_lv
 - mount /dev/devops-vg/app-data /mnt/app-data
 - df -h /mnt/app-data
 -  mount /dev/tws_vg/tws_lv /mnt/tws_lv_mount
 -  df -h

### For disk volume 
 - mkdir /mnt/tws_disk_mount
 -  mkfs -t  ext4 /dev/nvme2n1
 -  mount /dev/nvme3n1 /mnt/tws_disk_mount



## What I Learned
- LVM allows dynamic resizing of storage without downtime
- Physical Volume → Volume Group → Logical Volume flow
- Mount and usage of physical volume




