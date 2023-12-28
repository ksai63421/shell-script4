### 
Attach EBS volumes to running EC2 instance

**NOTE:**

* EBS volume should be in same az where you instnace is running

### steps

by default you cant see the volumes in linux server, we need to do some configuration

you can check the volume available are not using below command

lsblk

* create a filesystem from the volume

* in linux we need to create the directory manually when we mount the extra volume
