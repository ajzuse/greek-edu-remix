# Fedora Greek Edu Remix
# Maintained by the Greek Fedora Team
# http://el.fedoracommunity.org
# This remix is not affliated or endorsed by the Fedora Project or RedHat

# yum install spin-kickstarts
  
%include /usr/share/spin-kickstarts/fedora-livecd-desktop.ks

part / --size 8192

# rpmfusion
repo --name=rpmfusion-free --baseurl=http://download1.rpmfusion.org/free/fedora/releases/16/Everything/i386/os/
repo --name=rpmfusion-free-updates --baseurl=http://download1.rpmfusion.org/free/fedora/updates/16/i386
repo --name=rpmfusion-non-free  --baseurl=http://download1.rpmfusion.org/nonfree/fedora/releases/16/Everything/i386/os
repo --name=rpmfusion-non-free-updates --baseurl=http://download1.rpmfusion.org/nonfree/fedora/updates/16/i386
repo --name=adobe --baseurl=http://linuxdownload.adobe.com/linux/i386/

# Adding repo of the Greek Edu Applications
repo --name=greek-edu --baseurl=http://ts.sch.gr/repo/rpm/

%packages

# Dictionaries are big
-aspell-*
-hunspell-*
-man-pages*
-words

# unbrand:
-fedora-release
-fedora-logos
-fedora-release-notes
generic-release
generic-logos
generic-release-notes

# Legacy cmdline things we don't want
-isdn4k-utils
-nss_db
-krb5-auth-dialog
-krb5-workstation
-pam_krb5
-quota
-nano
-minicom
-dos2unix
-finger
-ftp
-jwhois
-mtr
-pinfo
-rsh
-telnet
-unix2dos
-nfs-utils
-ypbind
-yp-tools
-rpcbind

# greek edu apps
gymnasio
dimotiko

# Removing the following:
-totem
-planner
-deja-dup
-totem-nautilus
-totem-mozplugin
-totem-pl-parser

# rpmfusion release packages
rpmfusion-free-release
rpmfusion-nonfree-release
# livna
#livna-release
# adobe
adobe-release

#Edu Applications
gcompris
childsplay
drgeo
kdeedu
kdeedu-math
tuxtype2
stellarium
tuxmath
OpenEuclide
openteacher
celestia
writetype
maxima
vxMaxima
maxima-gui
chemtool
mathomatic
childsplay-alphabet_sounds_el


#Other things that are needed
qmmp
qmmp-plugins-freeworld
abiword
flash-plugin
vlc
#libdvdcss
libreoffice
gimp

#Extra DEs
@sugar-desktop

#%post
#sed -i -e ‘s/Generic release/Fedora Greek Edu Remix/g’ /etc/fedora-release /etc/issue
#gconftool-2 --set "/desktop/gnome/peripherals/mouse/touchpad_enabled" --type boolean true

%end
