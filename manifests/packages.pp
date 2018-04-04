node default {
  package {[
    'ttf-google-fonts-typewolf'
  ]:
    ensure => absent
  }

  -> package {[  # Packages that need to be installed first
    'i3-gaps',
    'ttf-google-fonts-git'
  ]:
    ensure => installed
  }

  -> package {[
    'acpi',
    'advanced-ssh-config',
    'android-tools',
    'archstrike-keyring',
    'arduino',
    'bcm20702a1-firmware',
    'betterlockscreen',
    'bleachbit',
    'blender',
    'bluez-firmware',
    'brave-bin',
    'brightnessctl',
    'calibre',
    'caprine',
    'caret-bin',
    'catimg',
    'climate',
    'clamtk',
    'corebird',
    'compton',
    'deluge',
    'dex',
    'dmenu',
    'dunst',
    'etcher',
    'etcher-cli',
    'exa',
    'fasd',
    'feedreader',
    'feh',
    'filezilla',
    'firefox',
    'firefox-developer-edition',
    'fonts-meta-extended-lt',
    'gimp',
    'glogg',
    'google-earth-pro',
    'gparted',
    'grub-customizer',
    'grub2-theme-archlinux',
    'gvim',
    'handbrake',
    'hexchat',
    'htop',
    'i3status',
    'i3status-rust',
    'ibus',
    'ibus-uniemoji',
    'inkscape',
    'intellij-idea-ultimate-edition',
    'intellij-idea-ultimate-edition-jre',
    'intellij-jdk',
    'jdk',
    'jshon',
    'kdenlive',
    'keepassxc',
    'keybase-bin',
    'kodi',
    'libinput',
    'libinput-gestures',
    'lightdm',
    'lightdm-webkit2-greeter',
    'lxpolkit-git',
    'lxrandr',
    'minecraft',
    'mkchromecast',
    'nextcloud-client',
    'nodejs',
    'numix-gtk-theme',
    'nvm',
    'obs-studio',
    'oh-my-zsh-git',
    'onlyoffice-bin',
    'otf-font-awesome',
    'pacaur',
    'perl-file-mimeinfo',
    'pigz',
    'playerctl',
    'postgresql',
    'postman-bin',
    'powertop',
    'psensor',
    'pulseaudio-bluetooth-a2dp-gdm-fix',
    'pyenv',
    'pyenv-virtualenv',
    'python-pip',
    'python-virtualenv',
    'python2-pip',
    'python2-virtualenv',
    'qt5-styleplugins',
    'redis',
    'redshift',
    'reptyr',
    'rofi',
    'scrcpy',
    'screenfetch',
    'sl',
    'slack-desktop',
    'slack-term',
    'spotify',
    'steam',
    'sublime-text',
    'sysstat',
    'tbg',
    'terminator',
    'thefuck',
    'thunderbird',
    'tig',
    'tor-browser-en',
    'ttf-emojione-color',
    'ttf-font-awesome',
    'ttf-ms-fonts',
    'ttf-wps-fonts',
    'turtl',
    'tupload',
    'visual-studio-code-bin',
    'virtualbox',
    'vivaldi',
    'vlc',
    'whatsie',
    'wps-office',
    'wps-office-extension-english-uk-dictionary',
    'yaourt',
    'yubikey-manager',
    'yubikey-personalization-gui',
    'zeal',
    'zsh',
    'zsh-completions',
    'zsh-doc',
    'zsh-syntax-highlighting'
  ]:
    ensure => installed
  }
}
