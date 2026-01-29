lsmod | grep vboxguest


sudo dnf install epel-release
sudo dnf groupinstall "Development Tools"
sudo dnf install kernel-devel kernel-headers dkms gcc make perl bzip2

# Insert Guest Additions CD
# In VirtualBox menu: Devices > Insert Guest Additions CD Image
# Then mount and run the installer:
sudo mount /dev/cdrom /mnt
sudo /mnt/VBoxLinuxAdditions.run
