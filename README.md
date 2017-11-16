# Shuhala dotfiles
Hello.

### Install nspire on linux with Wine
- Install Wine on your distro. *Ex: for [arch](https://wiki.archlinux.org/index.php/wine) or [debian](https://wiki.debian.org/Wine)*
(You might also need to install wine-mono and wine_gecko)

- Download the .msi nspire [software](https://education.ti.com/en/software/details/en/B4F6E4EE05B94D75AAB4DFE24B2720AE/ti-nspirecxcas_pc_trial)

- Install your software with wine: `wine start PATH/TO/FILE.msi`

- Keep the default installer urls. To run the application, the command should look like this (create an alias):
`wine start "C:\Program Files (x86)\TI Education\TI-Nspire CX CAS Student Software\TI-Nspire CX CAS Student Software.exe`

- Enjoy.

Read more on Wine: https://wiki.winehq.org/Wine_User%27s_Guide
