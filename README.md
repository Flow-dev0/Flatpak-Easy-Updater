# Flatpak Easy Updater

### In its current state this script has is only intended for opensuse tumbleweed.

### How does it work?

The Flatpak Easy Updater is designed for OpenSUSE Tumbleweed and works by utilizing the version information found in the /etc/os-release file. When set up to run at boot, it checks if any changes have occurred to this file and silently updates all your flatpaks automatically in the background. The primary purpose of this approach is to ensure that when NVIDIA drivers are updated the corresponding Flatpak version is also installed. By keeping both system drivers and Flatpak drivers synchronized, the user can enjoy a smoother flatpak experience. Say goodbye to 300mb+ manadtory flatpak driver installs just to try out one simple 50mb flatpak image. 🤧🤧🤧

### How do i set it up?

### Manual method

Place the **"flat-updater"** script in the /usr/bin/local directory. then add the script to your cronjobs using the following commands in the terminal

This will open your crontab and allow you add a new job.

```bash
crontab -e
```

Add this to a new line inside and save.

```bash
@ reboot /usr/bin/local/flat-updater
```

### Lazy method

Auto install script. Be aware you still need git and flatpak to be installed manaully.

```bash
curl https://raw.githubusercontent.com/Flow-dev0/Flatpak-Easy-Updater/main/install.sh | bash
```
