<h1 align="center">Sobre el Atomic-Linux Project</h1>

---

<p align="center">
<img width="225" height="225" alt="logo" src="https://github.com/user-attachments/assets/d9f3e8e0-f0a7-42b3-a671-9502c4ae6b69" />
</p>

> **A cutting-edge and highly optimized desktop experience based on Arch Linux.**

<div align="center">
  <table>
    <tr>
      <td align="center"><b>License</b></td>
      <td align="center"><b>Base</b></td>
      <td align="center"><b>Compositor</b></td>
      <td align="center"><b>Version</b></td>
    </tr>
    <tr>
      <td>
        <a href="https://www.gnu.org/licenses/agpl-3.0">
          <img src="https://img.shields.io/badge/License-AGPLv3-f38ba8?style=for-the-badge&logo=gnu&logoColor=f38ba8" alt="License: AGPL v3" />
        </a>
      </td>
      <td>
        <img src="https://img.shields.io/badge/Base-Arch_Linux-89b4fa?style=for-the-badge&logo=archlinux&logoColor=89b4fa" alt="Base-Arch" />
      </td>
      <td>
        <img src="https://img.shields.io/badge/WM-Hyprland-26a69a?style=for-the-badge&logo=hyprland&logoColor=26a69a" alt="WM-Hyprland" />
      </td>
      <td>
        <a href="https://github.com/Diamantito-cup/atomic-linux/releases">
          <img src="https://img.shields.io/github/v/release/Diamantito-cup/atomic-linux?style=for-the-badge&color=cba6f7&label=Versi%C3%B3n&labelColor=1e1e2e" alt="Version" />
        </a>
      </td>
    </tr>
    <tr>
      <td align="center"><b>Comunity</b></td>
      <td align="center"><b>Contributors</b></td>
      <td align="center"><b>Support</b></td>
      <td align="center"><b>Discord</b></td>
    </tr>
    <tr>
      <td>
        <a href="https://github.com/Diamantito-cup/atomic-linux/stargazers">
          <img src="https://img.shields.io/github/stars/Diamantito-cup/atomic-linux?style=for-the-badge&color=f9e2af&label=Estrellas&labelColor=1e1e2e" alt="Stars" />
        </a>
      </td>
      <td>
        <a href="https://github.com/Diamantito-cup/atomic-linux/graphs/contributors">
          <img src="https://img.shields.io/github/contributors/Diamantito-cup/atomic-linux?style=for-the-badge&color=a6e3a1&label=Colaboradores&labelColor=1e1e2e" alt="Contributors" />
        </a>
      </td>
      <td>
        <a href="https://www.patreon.com/cw/Atomic_Cathedral">
          <img src="https://img.shields.io/badge/Patreon-Ap%C3%B3yame-fab387?style=for-the-badge&logo=patreon&logoColor=fab387" alt="Patreon" />
        </a>
      </td>
      <td>
        <a href="https://discord.gg/sXP7zAhPy">
          <img src="https://img.shields.io/badge/Discord-%C3%9Anete-b4befe?style=for-the-badge&logo=discord&logoColor=b4befe" alt="Discord" />
        </a>
      </td>
    </tr>
  </table>
</div>

Atomic Linux aims to be a preconfigured and "user-friendly" option without sacrificing the power of Arch Linux. It comes with a cutting-edge Hyprland environment preconfigured with Lua, [Brain_Shell](https://github.com/Brainitech/Brain_Shell) (an external repository), and the tools needed to provide a stable system.

It is designed for developers who want an anime-inspired aesthetic, a highly customized desktop, and a comfortable development environment. Atomic Linux also comes with development software preinstalled, such as VS Code, OnlyOffice, Zen Browser, and Yazi, making it easier for users to get started.

---

# 👁️ The Visual Environment

Atomic Linux is not just another distribution; it is a work environment designed for performance and a modern cyberpunk aesthetic. Powered by the dynamic **Hyprland** compositor and the newly released **Brain_Shell** (developed natively with Quickshell), it offers fluid transitions, advanced blurring, and a cohesive visual experience across GTK4/Libadwaita.

## 📸 Preview

https://github.com/user-attachments/assets/24ab2d8e-0f31-47fa-8a56-c69094f4c050

---

# ✨ Main Features

- **🚀 Atomic Performance:** An extremely optimized ISO (under 4.0 GB) with advanced XZ compression for ultra-fast boot times.
- **🧠 Integrated Brain_Shell:** A cutting-edge interface based on modern QML technologies that replaces traditional panels with an intelligent environment.
- **🛡️ Elegant Login:** A login screen managed by `greetd` + `ReGreet`, using native GTK4 under Wayland.
- **📦 Custom Atomic-Repo:** A custom repository containing exclusive system tools for clean, modular updates.
- **🗺️ Atomic Tour:** An interactive welcome application built with C and GTK4 to guide you through your first steps with the system.

---

# 🛠️ Repository Structure

The repository tree is organized in a modular way to facilitate its compilation with `archiso` and the recently integrated `Makefile`:

<details>
<summary>📂 Click to expand the repository's full structure</summary>

```text
📦 Project Structure (Main Components)
.
├── .github
│   └── workflows
│       └── opencode.yml
├── .gitignore
├── airootfs
│   ├── etc
│   │   ├── calamares
│   │   │   ├── branding
│   │   │   │   └── atomic
│   │   │   │       ├── branding.desc
│   │   │   │       ├── logo.png
│   │   │   │       ├── show.qml
│   │   │   │       ├── stylesheet.qss
│   │   │   │       └── welcome.png
│   │   │   ├── modules
│   │   │   │   ├── displaymanager.conf
│   │   │   │   ├── finished.conf
│   │   │   │   ├── initcpio.conf
│   │   │   │   ├── locale.conf
│   │   │   │   ├── mount.conf
│   │   │   │   ├── packages.conf
│   │   │   │   ├── partition.conf
│   │   │   │   ├── preservefiles.conf
│   │   │   │   ├── removeuser.conf
│   │   │   │   ├── shellprocess-before.conf
│   │   │   │   ├── shellprocess-final.conf
│   │   │   │   ├── unpackfs.conf
│   │   │   │   ├── users.conf
│   │   │   │   └── welcome.conf
│   │   │   └── settings.conf
│   │   ├── fastfetch
│   │   │   └── atomic.txt
│   │   ├── greetd
│   │   │   ├── config.toml
│   │   │   └── hyprland.lua
│   │   ├── group
│   │   ├── hostname
│   │   ├── locale.conf
│   │   ├── localtime -> /usr/share/zoneinfo/UTC
│   │   ├── mkinitcpio.conf
│   │   ├── mkinitcpio.conf.d
│   │   │   └── archiso.conf
│   │   ├── mkinitcpio.d
│   │   │   └── linux.preset
│   │   ├── modprobe.d
│   │   │   └── broadcom-wl.conf
│   │   ├── motd
│   │   ├── os-release
│   │   ├── pacman.conf
│   │   ├── pacman.d
│   │   │   └── hooks
│   │   │       ├── uncomment-mirrors.hook
│   │   │       └── zzzz99-remove-custom-hooks-from-airootfs.hook
│   │   ├── passwd
│   │   ├── plymouth
│   │   │   └── plymouthd.conf
│   │   ├── regreet.toml
│   │   ├── resolv.conf -> /run/systemd/resolve/stub-resolv.conf
│   │   ├── shadow
│   │   ├── skel
│   │   │   ├── .config
│   │   │   │   ├── Brain_Shell
│   │   │   │   │   ├── Brain_ShellKeybinds.conf
│   │   │   │   │   └── Brain_ShellKeybinds.lua
│   │   │   │   ├── fastfetch
│   │   │   │   │   └── config.jsonc
│   │   │   │   ├── hypr
│   │   │   │   │   └── hyprland.lua
│   │   │   │   └── kitty
│   │   │   │       └── kitty.conf
│   │   │   └── .local
│   │   │       └── src
│   │   │           └── Brain_Shell
│   │   │               ├── dots-extra
│   │   │               │   ├── install-arch.sh
│   │   │               │   └── validate-install.sh
│   │   │               ├── flake.lock
│   │   │               ├── flake.nix
│   │   │               ├── install.sh
│   │   │               ├── LICENSE
│   │   │               ├── README.md
│   │   │               ├── shell.qml
│   │   │               └── src
│   │   │                   ├── assets
│   │   │                   │   └── wallpapers
│   │   │                   │       ├── brain-shell-default-0.png
│   │   │                   │       ├── brain-shell-default-1.png
│   │   │                   │       ├── brain-shell-default-2.jpg
│   │   │                   │       ├── brain-shell-default-3.jpg
│   │   │                   │       ├── brain-shell-default-4.jpg
│   │   │                   │       └── brain-shell-default-5.jpg
│   │   │                   ├── components
│   │   │                   │   ├── DiskBar.qml
│   │   │                   │   ├── IconBtn.qml
│   │   │                   │   ├── PopupPage.qml
│   │   │                   │   ├── PopupSlide.qml
│   │   │                   │   ├── ProfileButton.qml
│   │   │                   │   ├── Speedometer.qml
│   │   │                   │   ├── StatCard.qml
│   │   │                   │   ├── StatRow.qml
│   │   │                   │   ├── TabSwitcher.qml
│   │   │                   │   └── TimeInput.qml
│   │   │                   ├── config
│   │   │                   │   ├── brain-shell-colors.json.example
│   │   │                   │   ├── colors.conf
│   │   │                   │   ├── colors.conf.template
│   │   │                   │   ├── hypridle.conf
│   │   │                   │   ├── hyprlock.conf
│   │   │                   │   ├── matugen.toml
│   │   │                   │   └── shaders
│   │   │                   │       ├── Chroma.glsl
│   │   │                   │       ├── Grayscale.glsl
│   │   │                   │       ├── HDR.glsl
│   │   │                   │       ├── HighContrast.glsl
│   │   │                   │       ├── invert-colors.glsl
│   │   │                   │       └── Sepia.glsl
│   │   │                   ├── modules
│   │   │                   │   ├── Center
│   │   │                   │   │   ├── CenterContent.qml
│   │   │                   │   │   ├── DashStats.qml
│   │   │                   │   │   ├── DiskPanel.qml
│   │   │                   │   │   ├── FanPanel.qml
│   │   │                   │   │   ├── NetStatsPanel.qml
│   │   │                   │   │   ├── PowerPanel.qml
│   │   │                   │   │   └── TempPanel.qml
│   │   │                   │   ├── Left
│   │   │                   │   │   ├── ControlPanel.qml
│   │   │                   │   │   ├── LayoutDisplayer.qml
│   │   │                   │   │   ├── LeftContent.qml
│   │   │                   │   │   └── Workspaces.qml
│   │   │                   │   └── Right
│   │   │                   │       ├── Audio.qml
│   │   │                   │       ├── Battery.qml
│   │   │                   │       ├── Clock.qml
│   │   │                   │       ├── Network.qml
│   │   │                   │       ├── Notifications.qml
│   │   │                   │       ├── RightContent.qml
│   │   │                   │       └── SysTray.qml
│   │   │                   ├── popups
│   │   │                   │   ├── ArchMenu.qml
│   │   │                   │   ├── AudioPopup.qml
│   │   │                   │   ├── BluetoothTab.qml
│   │   │                   │   ├── ClipboardPopup.qml
│   │   │                   │   ├── Dashboard.qml
│   │   │                   │   ├── HistoryTab.qml
│   │   │                   │   ├── HotspotTab.qml
│   │   │                   │   ├── NetworkPopup.qml
│   │   │                   │   ├── NotificationsPopup.qml
│   │   │                   │   ├── NotificationToast.qml
│   │   │                   │   ├── PopupLayer.qml
│   │   │                   │   ├── QuickControl.qml
│   │   │                   │   ├── ScreenRecOptionsPopup.qml
│   │   │                   │   ├── VPNTab.qml
│   │   │                   │   ├── WallpaperPopup.qml
│   │   │                   │   └── WifiTab.qml
│   │   │                   ├── qmldir
│   │   │                   ├── scripts
│   │   │                   │   ├── GfxSwitch.sh
│   │   │                   │   ├── list_apps.py
│   │   │                   │   └── PowerControl.sh
│   │   │                   ├── services
│   │   │                   │   ├── AppLauncher.qml
│   │   │                   │   ├── AudioControl.qml
│   │   │                   │   ├── BatteryStatus.qml
│   │   │                   │   ├── BatteryWarning.qml
│   │   │                   │   ├── CavaService.qml
│   │   │                   │   ├── ClipboardService.qml
│   │   │                   │   ├── config_tab
│   │   │                   │   │   ├── KeybindService.qml
│   │   │                   │   │   ├── KeybindsPage.qml
│   │   │                   │   │   └── ShellConfig.qml
│   │   │                   │   ├── home
│   │   │                   │   │   ├── CalendarCard.qml
│   │   │                   │   │   ├── ClockCard.qml
│   │   │                   │   │   ├── DashHome.qml
│   │   │                   │   │   ├── PlayerCard.qml
│   │   │                   │   │   ├── ProfileCard.qml
│   │   │                   │   │   ├── qmldir
│   │   │                   │   │   └── QuickSettings.qml
│   │   │                   │   ├── KanbanBoard.qml
│   │   │                   │   ├── notifications
│   │   │                   │   │   ├── NotificationList.qml
│   │   │                   │   │   └── NotificationService.qml
│   │   │                   │   ├── PowerMenu.qml
│   │   │                   │   ├── qmldir
│   │   │                   │   ├── ScreenRecService.qml
│   │   │                   │   ├── system
│   │   │                   │   │   ├── CpuFreqService.qml
│   │   │                   │   │   ├── CpuService.qml
│   │   │                   │   │   ├── DiskService.qml
│   │   │                   │   │   ├── EnvyControl.qml
│   │   │                   │   │   ├── EnvyControlService.qml
│   │   │                   │   │   ├── FanControl.qml
│   │   │                   │   │   ├── GpuService.qml
│   │   │                   │   │   ├── MemService.qml
│   │   │                   │   │   ├── NetService.qml
│   │   │                   │   │   ├── SystemStats.qml
│   │   │                   │   │   └── ThermalService.qml
│   │   │                   │   ├── UpdateService.qml
│   │   │                   │   └── WallpaperService.qml
│   │   │                   ├── shapes
│   │   │                   │   ├── PopupShape.qml
│   │   │                   │   └── SeamlessBarShape.qml
│   │   │                   ├── state
│   │   │                   │   ├── ClockState.qml
│   │   │                   │   ├── IpcManager.qml
│   │   │                   │   ├── Popups.qml
│   │   │                   │   └── ShellState.qml
│   │   │                   ├── theme
│   │   │                   │   ├── ColorLoader.qml
│   │   │                   │   ├── Colors.qml
│   │   │                   │   ├── Metrics.qml
│   │   │                   │   ├── qmldir
│   │   │                   │   └── Theme.qml
│   │   │                   └── windows
│   │   │                       ├── Border.qml
│   │   │                       ├── ConfirmDialog.qml
│   │   │                       ├── PopupDismiss.qml
│   │   │                       ├── TopBar.qml
│   │   │                       └── UpdatePopup.qml
│   │   ├── ssh
│   │   │   └── sshd_config.d
│   │   │       └── 10-archiso.conf
│   │   ├── sudoers.d
│   │   │   ├── 10-atomic-admins
│   │   │   ├── 90-wheel
│   │   │   └── live
│   │   └── systemd
│   │       ├── journald.conf.d
│   │       │   └── volatile-storage.conf
│   │       ├── logind.conf.d
│   │       │   └── do-not-suspend.conf
│   │       ├── network
│   │       │   ├── 20-ethernet.network
│   │       │   ├── 20-wlan.network
│   │       │   └── 20-wwan.network
│   │       ├── networkd.conf.d
│   │       │   └── ipv6-privacy-extensions.conf
│   │       ├── resolved.conf.d
│   │       │   └── archiso.conf
│   │       ├── system
│   │       │   ├── atomic-live-user.service
│   │       │   ├── atomic-setup.service
│   │       │   ├── choose-mirror.service
│   │       │   ├── cloud-init.target.wants
│   │       │   │   ├── cloud-config.service -> /usr/lib/systemd/system/cloud-config.service
│   │       │   │   ├── cloud-final.service -> /usr/lib/systemd/system/cloud-final.service
│   │       │   │   ├── cloud-init-local.service -> /usr/lib/systemd/system/cloud-init-local.service
│   │       │   │   ├── cloud-init-main.service -> /usr/lib/systemd/system/cloud-init-main.service
│   │       │   │   └── cloud-init-network.service -> /usr/lib/systemd/system/cloud-init-network.service
│   │       │   ├── dbus-org.freedesktop.ModemManager1.service -> /usr/lib/systemd/system/ModemManager.service
│   │       │   ├── dbus-org.freedesktop.network1.service -> /usr/lib/systemd/system/systemd-networkd.service
│   │       │   ├── dbus-org.freedesktop.resolve1.service -> /usr/lib/systemd/system/systemd-resolved.service
│   │       │   ├── dbus-org.freedesktop.timesync1.service -> /usr/lib/systemd/system/systemd-timesyncd.service
│   │       │   ├── display-manager.service -> /usr/lib/systemd/system/greetd.service
│   │       │   ├── display-manager.service.wants
│   │       │   │   └── greetd.service -> /usr/lib/systemd/system/greetd.service
│   │       │   ├── etc-pacman.d-gnupg.mount
│   │       │   ├── getty@tty1.service.d
│   │       │   │   └── autologin.conf
│   │       │   ├── livecd-alsa-unmuter.service
│   │       │   ├── livecd-talk.service
│   │       │   ├── multi-user.target.wants
│   │       │   │   ├── atomic-live-user.service -> ../atomic-live-user.service
│   │       │   │   ├── atomic-setup.service -> /etc/systemd/system/atomic-setup.service
│   │       │   │   ├── choose-mirror.service -> ../choose-mirror.service
│   │       │   │   ├── hv_fcopy_daemon.service -> /usr/lib/systemd/system/hv_fcopy_daemon.service
│   │       │   │   ├── hv_kvp_daemon.service -> /usr/lib/systemd/system/hv_kvp_daemon.service
│   │       │   │   ├── hv_vss_daemon.service -> /usr/lib/systemd/system/hv_vss_daemon.service
│   │       │   │   ├── iwd.service -> /usr/lib/systemd/system/iwd.service
│   │       │   │   ├── livecd-talk.service -> /etc/systemd/system/livecd-talk.service
│   │       │   │   ├── ModemManager.service -> /usr/lib/systemd/system/ModemManager.service
│   │       │   │   ├── NetworkManager.service -> /usr/lib/systemd/system/NetworkManager.service
│   │       │   │   ├── pacman-init.service -> ../pacman-init.service
│   │       │   │   ├── sshd.service -> /usr/lib/systemd/system/sshd.service
│   │       │   │   ├── systemd-networkd.service -> /usr/lib/systemd/system/systemd-networkd.service
│   │       │   │   ├── systemd-resolved.service -> /usr/lib/systemd/system/systemd-resolved.service
│   │       │   │   ├── vboxservice.service -> /usr/lib/systemd/system/vboxservice.service
│   │       │   │   ├── vmtoolsd.service -> /usr/lib/systemd/system/vmtoolsd.service
│   │       │   │   └── vmware-vmblock-fuse.service -> /usr/lib/systemd/system/vmware-vmblock-fuse.service
│   │       │   ├── network-online.target.wants
│   │       │   │   └── systemd-networkd-wait-online.service -> /usr/lib/systemd/system/systemd-networkd-wait-online.service
│   │       │   ├── pacman-init.service
│   │       │   ├── sockets.target.wants
│   │       │   │   ├── pcscd.socket -> /usr/lib/systemd/system/pcscd.socket
│   │       │   │   └── systemd-networkd.socket -> /usr/lib/systemd/system/systemd-networkd.socket
│   │       │   ├── sound.target.wants
│   │       │   │   └── livecd-alsa-unmuter.service -> ../livecd-alsa-unmuter.service
│   │       │   ├── sysinit.target.wants
│   │       │   │   ├── systemd-time-wait-sync.service -> /usr/lib/systemd/system/systemd-time-wait-sync.service
│   │       │   │   └── systemd-timesyncd.service -> /usr/lib/systemd/system/systemd-timesyncd.service
│   │       │   └── systemd-networkd-wait-online.service.d
│   │       │       └── wait-for-only-one-interface.conf
│   │       └── system-generators
│   │           └── systemd-gpt-auto-generator -> /dev/null
│   ├── pacman.conf
│   ├── root
│   │   ├── .automated_script.sh
│   │   ├── .gnupg
│   │   │   └── scdaemon.conf
│   │   ├── .zlogin
│   │   ├── atomic-repo
│   │   │   ├── atomic.db.tar.gz
│   │   │   └── calamares-3:3.4.2.26.0427-3-x86_64.pkg.tar.zst
│   │   └── customize_airootfs.sh
│   ├── usr
│   │   ├── bin
│   │   │   ├── calamares-live
│   │   │   └── start-atomic
│   │   ├── local
│   │   │   └── bin
│   │   │       ├── atomic-limine.sh
│   │   │       ├── atomic-live-user.sh
│   │   │       ├── atomic-setup.sh
│   │   │       ├── atomic-update
│   │   │       ├── install-limine.sh
│   │   │       └── prepare_kernel.sh
│   │   └── share
│   │       ├── Brain_Shell
│   │       │   ├── dots-extra
│   │       │   │   ├── install-arch.sh
│   │       │   │   └── validate-install.sh
│   │       │   ├── flake.lock
│   │       │   ├── flake.nix
│   │       │   ├── install.sh
│   │       │   ├── LICENSE
│   │       │   ├── README.md
│   │       │   ├── shell.qml
│   │       │   └── src
│   │       │       ├── assets
│   │       │       │   └── wallpapers
│   │       │       │       ├── brain-shell-default-0.png
│   │       │       │       ├── brain-shell-default-1.png
│   │       │       │       ├── brain-shell-default-2.jpg
│   │       │       │       ├── brain-shell-default-3.jpg
│   │       │       │       ├── brain-shell-default-4.jpg
│   │       │       │       └── brain-shell-default-5.jpg
│   │       │       ├── components
│   │       │       │   ├── DiskBar.qml
│   │       │       │   ├── IconBtn.qml
│   │       │       │   ├── PopupPage.qml
│   │       │       │   ├── PopupSlide.qml
│   │       │       │   ├── ProfileButton.qml
│   │       │       │   ├── Speedometer.qml
│   │       │       │   ├── StatCard.qml
│   │       │       │   ├── StatRow.qml
│   │       │       │   ├── TabSwitcher.qml
│   │       │       │   └── TimeInput.qml
│   │       │       ├── config
│   │       │       │   ├── brain-shell-colors.json.example
│   │       │       │   ├── colors.conf
│   │       │       │   ├── colors.conf.template
│   │       │       │   ├── hypridle.conf
│   │       │       │   ├── hyprlock.conf
│   │       │       │   ├── matugen.toml
│   │       │       │   └── shaders
│   │       │       │       ├── Chroma.glsl
│   │       │       │       ├── Grayscale.glsl
│   │       │       │       ├── HDR.glsl
│   │       │       │       ├── HighContrast.glsl
│   │       │       │       ├── invert-colors.glsl
│   │       │       │       └── Sepia.glsl
│   │       │       ├── modules
│   │       │       │   ├── Center
│   │       │       │   │   ├── CenterContent.qml
│   │       │       │   │   ├── DashStats.qml
│   │       │       │   │   ├── DiskPanel.qml
│   │       │       │   │   ├── FanPanel.qml
│   │       │       │   │   ├── NetStatsPanel.qml
│   │       │       │   │   ├── PowerPanel.qml
│   │       │       │   │   └── TempPanel.qml
│   │       │       │   ├── Left
│   │       │       │   │   ├── ControlPanel.qml
│   │       │       │   │   ├── LayoutDisplayer.qml
│   │       │       │   │   ├── LeftContent.qml
│   │       │       │   │   └── Workspaces.qml
│   │       │       │   └── Right
│   │       │       │       ├── Audio.qml
│   │       │       │       ├── Battery.qml
│   │       │       │       ├── Clock.qml
│   │       │       │       ├── Network.qml
│   │       │       │       ├── Notifications.qml
│   │       │       │       ├── RightContent.qml
│   │       │       │       └── SysTray.qml
│   │       │       ├── popups
│   │       │       │   ├── ArchMenu.qml
│   │       │       │   ├── AudioPopup.qml
│   │       │       │   ├── BluetoothTab.qml
│   │       │       │   ├── ClipboardPopup.qml
│   │       │       │   ├── Dashboard.qml
│   │       │       │   ├── HistoryTab.qml
│   │       │       │   ├── HotspotTab.qml
│   │       │       │   ├── NetworkPopup.qml
│   │       │       │   ├── NotificationsPopup.qml
│   │       │       │   ├── NotificationToast.qml
│   │       │       │   ├── PopupLayer.qml
│   │       │       │   ├── QuickControl.qml
│   │       │       │   ├── ScreenRecOptionsPopup.qml
│   │       │       │   ├── VPNTab.qml
│   │       │       │   ├── WallpaperPopup.qml
│   │       │       │   └── WifiTab.qml
│   │       │       ├── qmldir
│   │       │       ├── scripts
│   │       │       │   ├── GfxSwitch.sh
│   │       │       │   ├── list_apps.py
│   │       │       │   └── PowerControl.sh
│   │       │       ├── services
│   │       │       │   ├── AppLauncher.qml
│   │       │       │   ├── AudioControl.qml
│   │       │       │   ├── BatteryStatus.qml
│   │       │       │   ├── BatteryWarning.qml
│   │       │       │   ├── CavaService.qml
│   │       │       │   ├── ClipboardService.qml
│   │       │       │   ├── config_tab
│   │       │       │   │   ├── KeybindService.qml
│   │       │       │   │   ├── KeybindsPage.qml
│   │       │       │   │   └── ShellConfig.qml
│   │       │       │   ├── home
│   │       │       │   │   ├── CalendarCard.qml
│   │       │       │   │   ├── ClockCard.qml
│   │       │       │   │   ├── DashHome.qml
│   │       │       │   │   ├── PlayerCard.qml
│   │       │       │   │   ├── ProfileCard.qml
│   │       │       │   │   ├── qmldir
│   │       │       │   │   └── QuickSettings.qml
│   │       │       │   ├── KanbanBoard.qml
│   │       │       │   ├── notifications
│   │       │       │   │   ├── NotificationList.qml
│   │       │       │   │   └── NotificationService.qml
│   │       │       │   ├── PowerMenu.qml
│   │       │       │   ├── qmldir
│   │       │       │   ├── ScreenRecService.qml
│   │       │       │   ├── system
│   │       │       │   │   ├── CpuFreqService.qml
│   │       │       │   │   ├── CpuService.qml
│   │       │       │   │   ├── DiskService.qml
│   │       │       │   │   ├── EnvyControl.qml
│   │       │       │   │   ├── EnvyControlService.qml
│   │       │       │   │   ├── FanControl.qml
│   │       │       │   │   ├── GpuService.qml
│   │       │       │   │   ├── MemService.qml
│   │       │       │   │   ├── NetService.qml
│   │       │       │   │   ├── SystemStats.qml
│   │       │       │   │   └── ThermalService.qml
│   │       │       │   ├── UpdateService.qml
│   │       │       │   └── WallpaperService.qml
│   │       │       ├── shapes
│   │       │       │   ├── PopupShape.qml
│   │       │       │   └── SeamlessBarShape.qml
│   │       │       ├── state
│   │       │       │   ├── ClockState.qml
│   │       │       │   ├── IpcManager.qml
│   │       │       │   ├── Popups.qml
│   │       │       │   └── ShellState.qml
│   │       │       ├── theme
│   │       │       │   ├── ColorLoader.qml
│   │       │       │   ├── Colors.qml
│   │       │       │   ├── Metrics.qml
│   │       │       │   ├── qmldir
│   │       │       │   └── Theme.qml
│   │       │       └── windows
│   │       │           ├── Border.qml
│   │       │           ├── ConfirmDialog.qml
│   │       │           ├── PopupDismiss.qml
│   │       │           ├── TopBar.qml
│   │       │           └── UpdatePopup.qml
│   │       ├── calamares
│   │       │   └── themes
│   │       │       └── atomic
│   │       │           └── stylesheet.qss
│   │       └── plymouth
│   │           └── themes
│   │               ├── atomic
│   │               │   ├── atomic.plymouth
│   │               │   └── watermark.png
│   │               └── hyprland-mac-style
│   │                   ├── hyprland-mac-style.plymouth
│   │                   ├── images
│   │                   │   ├── animation-00.png
│   │                   │   ├── animation-01.png
│   │                   │   ├── animation-02.png
│   │                   │   ├── animation-03.png
│   │                   │   ├── animation-04.png
│   │                   │   ├── animation-05.png
│   │                   │   ├── animation-06.png
│   │                   │   ├── animation-07.png
│   │                   │   ├── animation-08.png
│   │                   │   ├── animation-09.png
│   │                   │   ├── animation-10.png
│   │                   │   ├── animation-11.png
│   │                   │   ├── animation-12.png
│   │                   │   ├── animation-13.png
│   │                   │   ├── animation-14.png
│   │                   │   ├── animation-15.png
│   │                   │   ├── animation-16.png
│   │                   │   ├── animation-17.png
│   │                   │   ├── animation-18.png
│   │                   │   ├── animation-19.png
│   │                   │   ├── animation-20.png
│   │                   │   ├── animation-21.png
│   │                   │   ├── animation-22.png
│   │                   │   ├── animation-23.png
│   │                   │   ├── animation-24.png
│   │                   │   ├── animation-25.png
│   │                   │   ├── animation-26.png
│   │                   │   ├── animation-27.png
│   │                   │   ├── animation-28.png
│   │                   │   ├── animation-29.png
│   │                   │   ├── animation-30.png
│   │                   │   ├── animation-31.png
│   │                   │   ├── animation-32.png
│   │                   │   ├── animation-33.png
│   │                   │   ├── animation-34.png
│   │                   │   ├── animation-35.png
│   │                   │   ├── animation-36.png
│   │                   │   ├── animation-37.png
│   │                   │   ├── animation-38.png
│   │                   │   ├── animation-39.png
│   │                   │   ├── animation-40.png
│   │                   │   ├── animation-41.png
│   │                   │   ├── animation-42.png
│   │                   │   ├── animation-43.png
│   │                   │   ├── animation-44.png
│   │                   │   ├── animation-45.png
│   │                   │   ├── animation-46.png
│   │                   │   ├── animation-47.png
│   │                   │   ├── animation-48.png
│   │                   │   ├── animation-49.png
│   │                   │   ├── animation-50.png
│   │                   │   ├── animation-51.png
│   │                   │   ├── animation-52.png
│   │                   │   ├── animation-53.png
│   │                   │   ├── animation-54.png
│   │                   │   ├── animation-55.png
│   │                   │   ├── animation-56.png
│   │                   │   ├── animation-57.png
│   │                   │   ├── animation-58.png
│   │                   │   ├── animation-59.png
│   │                   │   ├── animation-60.png
│   │                   │   ├── animation-61.png
│   │                   │   ├── animation-62.png
│   │                   │   ├── animation-63.png
│   │                   │   ├── animation-64.png
│   │                   │   ├── animation-65.png
│   │                   │   ├── animation-66.png
│   │                   │   ├── animation-67.png
│   │                   │   ├── animation-68.png
│   │                   │   ├── animation-69.png
│   │                   │   ├── animation-70.png
│   │                   │   ├── animation-71.png
│   │                   │   ├── animation-72.png
│   │                   │   ├── animation-73.png
│   │                   │   ├── animation-74.png
│   │                   │   ├── animation-75.png
│   │                   │   ├── animation-76.png
│   │                   │   ├── animation-77.png
│   │                   │   ├── animation-78.png
│   │                   │   ├── animation-79.png
│   │                   │   ├── animation-80.png
│   │                   │   ├── bullet.png
│   │                   │   ├── capslock.png
│   │                   │   ├── entry.png
│   │                   │   ├── keyboard.png
│   │                   │   ├── keymap-render.png
│   │                   │   ├── lock.png
│   │                   │   ├── progress-00.png
│   │                   │   ├── progress-01.png
│   │                   │   ├── progress-02.png
│   │                   │   ├── progress-03.png
│   │                   │   ├── progress-04.png
│   │                   │   ├── progress-05.png
│   │                   │   ├── progress-06.png
│   │                   │   ├── progress-07.png
│   │                   │   ├── progress-08.png
│   │                   │   ├── progress-09.png
│   │                   │   ├── progress-10.png
│   │                   │   ├── progress-11.png
│   │                   │   ├── progress-12.png
│   │                   │   ├── progress-13.png
│   │                   │   ├── progress-14.png
│   │                   │   ├── progress-15.png
│   │                   │   ├── progress-16.png
│   │                   │   ├── progress-17.png
│   │                   │   ├── progress-18.png
│   │                   │   ├── progress-19.png
│   │                   │   ├── progress-20.png
│   │                   │   ├── progress-21.png
│   │                   │   ├── progress-22.png
│   │                   │   ├── progress-23.png
│   │                   │   ├── progress-24.png
│   │                   │   ├── progress-25.png
│   │                   │   ├── progress-26.png
│   │                   │   ├── progress-27.png
│   │                   │   ├── progress-28.png
│   │                   │   ├── progress-29.png
│   │                   │   ├── progress-30.png
│   │                   │   ├── progress-31.png
│   │                   │   ├── progress-32.png
│   │                   │   ├── progress-33.png
│   │                   │   ├── progress-34.png
│   │                   │   ├── progress-35.png
│   │                   │   ├── progress-36.png
│   │                   │   ├── progress-37.png
│   │                   │   ├── progress-38.png
│   │                   │   ├── progress-39.png
│   │                   │   ├── progress-40.png
│   │                   │   ├── progress-41.png
│   │                   │   ├── progress-42.png
│   │                   │   ├── progress-43.png
│   │                   │   ├── progress-44.png
│   │                   │   ├── progress-45.png
│   │                   │   ├── progress-46.png
│   │                   │   ├── progress-47.png
│   │                   │   ├── progress-48.png
│   │                   │   ├── progress-49.png
│   │                   │   └── progress-50.png
│   │                   └── screenshot.png
│   └── yay-next
│       ├── .dockerignore
│       ├── .github
│       │   ├── CODEOWNERS
│       │   ├── dependabot.yml
│       │   ├── FUNDING.yml
│       │   ├── ISSUE_TEMPLATE
│       │   │   ├── bug_report.md
│       │   │   └── feature_request.md
│       │   └── workflows
│       │       ├── builder-image.yml
│       │       ├── multiarch-build.yml
│       │       ├── testing-git.yml
│       │       └── testing.yml
│       ├── .gitignore
│       ├── .golangci.yml
│       ├── .pre-commit-config.yaml
│       ├── ci.Dockerfile
│       ├── clean.go
│       ├── clean_test.go
│       ├── cmd.go
│       ├── cmd_test.go
│       ├── completions
│       │   ├── bash
│       │   ├── fish
│       │   └── zsh
│       ├── CONTRIBUTING.md
│       ├── doc
│       │   └── yay.8
│       ├── Dockerfile
│       ├── errors.go
│       ├── get.go
│       ├── get_ops_test.go
│       ├── go.mod
│       ├── go.sum
│       ├── LICENSE
│       ├── local_install.go
│       ├── local_install_test.go
│       ├── main.go
│       ├── Makefile
│       ├── pkg
│       │   ├── cmd
│       │   │   └── graph
│       │   │       ├── main.go
│       │   │       └── main_test.go
│       │   ├── completion
│       │   │   ├── completion.go
│       │   │   └── completion_test.go
│       │   ├── db
│       │   │   ├── executor.go
│       │   │   ├── ialpm
│       │   │   │   ├── alpm.go
│       │   │   │   ├── alpm_test.go
│       │   │   │   └── high_level.go
│       │   │   ├── mock
│       │   │   │   ├── executor.go
│       │   │   │   └── repo.go
│       │   │   └── types.go
│       │   ├── dep
│       │   │   ├── dep.go
│       │   │   ├── dep_graph.go
│       │   │   ├── dep_graph_bench_test.go
│       │   │   ├── dep_graph_ops_test.go
│       │   │   ├── dep_graph_rpc_test.go
│       │   │   ├── dep_graph_test.go
│       │   │   ├── dep_unit_test.go
│       │   │   ├── mock
│       │   │   │   └── aur.go
│       │   │   ├── target_handler.go
│       │   │   ├── testdata
│       │   │   │   ├── android-sdk.json
│       │   │   │   ├── aws-cli-git.json
│       │   │   │   ├── clion.json
│       │   │   │   ├── gstreamer-git.json
│       │   │   │   ├── jellyfin-server.json
│       │   │   │   ├── jellyfin-web.json
│       │   │   │   ├── jellyfin.json
│       │   │   │   ├── liri-desktop-git.json
│       │   │   │   ├── mesa-git.json
│       │   │   │   ├── nx.json
│       │   │   │   ├── python-pydantic.json
│       │   │   │   └── samsung-unified-driver.json
│       │   │   └── topo
│       │   │       ├── dep.go
│       │   │       ├── dep_extended_test.go
│       │   │       ├── dep_test.go
│       │   │       └── errors.go
│       │   ├── download
│       │   │   ├── abs.go
│       │   │   ├── abs_test.go
│       │   │   ├── aur.go
│       │   │   ├── aur_integration_test.go
│       │   │   ├── aur_test.go
│       │   │   ├── errors.go
│       │   │   ├── unified.go
│       │   │   ├── unified_integration_test.go
│       │   │   ├── unified_test.go
│       │   │   └── utils_test.go
│       │   ├── intrange
│       │   │   ├── intrange.go
│       │   │   └── intrange_test.go
│       │   ├── menus
│       │   │   ├── clean_menu.go
│       │   │   ├── diff_menu.go
│       │   │   ├── edit_clean_ops_test.go
│       │   │   ├── edit_menu.go
│       │   │   ├── menu.go
│       │   │   └── menus_ops_test.go
│       │   ├── multierror
│       │   │   ├── multierror.go
│       │   │   └── multierror_test.go
│       │   ├── news
│       │   │   ├── .snapshots
│       │   │   │   ├── TestPrintNewsFeed-all-quiet
│       │   │   │   ├── TestPrintNewsFeed-all-verbose
│       │   │   │   ├── TestPrintNewsFeed-latest-quiet
│       │   │   │   ├── TestPrintNewsFeed-latest-quiet-topdown
│       │   │   │   └── TestPrintNewsFeedSameDay
│       │   │   ├── news.go
│       │   │   └── news_test.go
│       │   ├── query
│       │   │   ├── aur_warnings.go
│       │   │   ├── errors.go
│       │   │   ├── filter.go
│       │   │   ├── metric.go
│       │   │   ├── metric_test.go
│       │   │   ├── query_builder.go
│       │   │   ├── query_builder_test.go
│       │   │   ├── source.go
│       │   │   ├── types.go
│       │   │   ├── version_diff.go
│       │   │   └── version_diff_test.go
│       │   ├── runtime
│       │   │   ├── pacman.go
│       │   │   ├── pacman_test.go
│       │   │   ├── runtime.go
│       │   │   └── runtime_test.go
│       │   ├── settings
│       │   │   ├── args.go
│       │   │   ├── config.go
│       │   │   ├── config_test.go
│       │   │   ├── dirs.go
│       │   │   ├── dirs_test.go
│       │   │   ├── errors.go
│       │   │   ├── exe
│       │   │   │   ├── cmd_builder.go
│       │   │   │   ├── cmd_builder_test.go
│       │   │   │   ├── exec.go
│       │   │   │   ├── mock.go
│       │   │   │   └── runner_test.go
│       │   │   ├── ini.go
│       │   │   ├── ini_test.go
│       │   │   ├── parser
│       │   │   │   ├── parser.go
│       │   │   │   ├── parser_test.go
│       │   │   │   ├── rebuild_mode.go
│       │   │   │   └── target_mode.go
│       │   │   └── yay.conf
│       │   ├── sync
│       │   │   ├── build
│       │   │   │   ├── errors.go
│       │   │   │   ├── installer.go
│       │   │   │   ├── installer_test.go
│       │   │   │   ├── pkg_archive.go
│       │   │   │   └── pkg_archive_test.go
│       │   │   ├── srcinfo
│       │   │   │   ├── pgp
│       │   │   │   │   ├── keys.go
│       │   │   │   │   ├── keys_test.go
│       │   │   │   │   └── testdata
│       │   │   │   │       ├── 11E521D646982372EB577A1F8F0871F202119294
│       │   │   │   │       ├── 487EACC08557AD082088DABA1EB2638FF56C0C53
│       │   │   │   │       ├── 647F28654894E3BD457199BE38DBBDC86092693E
│       │   │   │   │       ├── A314827C4E4250A204CE6E13284FC34C8E4B1A25
│       │   │   │   │       ├── ABAF11C65A2970B130ABE3C479BE3E4300411886
│       │   │   │   │       ├── B6C8F98282B944E3B0D5C2530FC3042E345AD05D
│       │   │   │   │       └── C52048C0C0748FEE227D47A2702353E0F7E48EDB
│       │   │   │   ├── service.go
│       │   │   │   └── service_test.go
│       │   │   ├── sync.go
│       │   │   └── workdir
│       │   │       ├── aur_source.go
│       │   │       ├── aur_source_test.go
│       │   │       ├── clean.go
│       │   │       ├── merge.go
│       │   │       ├── preparer.go
│       │   │       ├── preparer_test.go
│       │   │       └── workdir_ops_test.go
│       │   ├── text
│       │   │   ├── color.go
│       │   │   ├── color_test.go
│       │   │   ├── convert.go
│       │   │   ├── errors.go
│       │   │   ├── input.go
│       │   │   ├── service.go
│       │   │   ├── text.go
│       │   │   ├── text_test.go
│       │   │   ├── time.go
│       │   │   ├── time_test.go
│       │   │   └── utils_coverage_test.go
│       │   ├── upgrade
│       │   │   ├── .snapshots
│       │   │   │   ├── Test_upAUR-No_Updates
│       │   │   │   ├── Test_upAUR-Simple_Update
│       │   │   │   └── Test_upAUR-Time_Update
│       │   │   ├── service.go
│       │   │   ├── service_test.go
│       │   │   ├── sources.go
│       │   │   ├── sources_test.go
│       │   │   ├── upgrade.go
│       │   │   └── upgrade_test.go
│       │   └── vcs
│       │       ├── .snapshots
│       │       │   └── TestInfoStore_Update-simple
│       │       ├── mock.go
│       │       ├── vcs.go
│       │       └── vcs_test.go
│       ├── po
│       │   ├── ca.po
│       │   ├── ca_ES.po
│       │   ├── cs.po
│       │   ├── da.po
│       │   ├── da_DK.po
│       │   ├── de.po
│       │   ├── en.po
│       │   ├── es.po
│       │   ├── eu.po
│       │   ├── fi.po
│       │   ├── fr.po
│       │   ├── fr_FR.po
│       │   ├── he.po
│       │   ├── he_IL.po
│       │   ├── hu.po
│       │   ├── id.po
│       │   ├── it_IT.po
│       │   ├── ja.po
│       │   ├── ko.po
│       │   ├── nl.po
│       │   ├── pl.po
│       │   ├── pl_PL.po
│       │   ├── pt.po
│       │   ├── pt_BR.po
│       │   ├── ru.po
│       │   ├── ru_RU.po
│       │   ├── sk.po
│       │   ├── sv.po
│       │   ├── tr.po
│       │   ├── uk.po
│       │   ├── vi.po
│       │   ├── vi_VN.po
│       │   ├── zh_CN.po
│       │   └── zh_TW.po
│       ├── print.go
│       ├── print_test.go
│       ├── query.go
│       ├── query_test.go
│       ├── README.md
│       ├── SECURITY.md
│       ├── sync.go
│       ├── sync_test.go
│       ├── testdata
│       │   ├── cephbin
│       │   │   ├── .SRCINFO
│       │   │   └── PKGBUILD
│       │   ├── gourou
│       │   │   ├── .SRCINFO
│       │   │   └── PKGBUILD
│       │   ├── jfin
│       │   │   ├── .SRCINFO
│       │   │   └── PKGBUILD
│       │   ├── libzip-git
│       │   │   ├── .SRCINFO
│       │   │   └── PKGBUILD
│       │   └── pacman.conf
│       ├── vcs.go
│       ├── vcs_ops_test.go
│       ├── vote.go
│       ├── vote_ops_test.go
│       └── yay.conf -> pkg/settings/yay.conf
├── assets
│   ├── 20260610_155820.mp4
│   └── logo.png
├── bootstrap_packages
├── efiboot
│   └── loader
│       ├── entries
│       │   ├── 01-archiso-linux.conf
│       │   ├── 02-archiso-speech-linux.conf
│       │   └── 03-archiso-memtest86+x64.conf
│       └── loader.conf
├── grub
│   ├── grub.cfg
│   └── loopback.cfg
├── hyprmod
├── LICENSE
├── Limpieza.sh
├── Makefile
├── mirrorlist
├── packages.x86_64
├── pacman.conf
├── PRIVACY.md
├── profiledef.sh
├── README.eng.md
├── README.md
├── README.spa.md
└── syslinux
    ├── archiso_head.cfg
    ├── archiso_pxe-linux.cfg
    ├── archiso_pxe.cfg
    ├── archiso_sys-linux.cfg
    ├── archiso_sys.cfg
    ├── archiso_tail.cfg
    ├── splash.png
    └── syslinux.cfg

```

</details>

---

# Integrated Components

| Component | Package Type | Function in Atomic Linux |
| :--- | :--- | :--- |
| `quickshell` | Core (AUR/Repo) | Rendering engine for the Brain_Shell interface |
| `brain-shell` | App (Repo) | Main desktop environment and widgets |
| `atomic-tour` | Exclusive (External Repo) | Welcome and interactive introduction in GTK4 (not integrated in this version) |
| `greetd` | Service (Arch) | Secure login daemon running in the background |
| `greetd-regreet` | Interface (Arch) | Visual login screen in native GTK4 |
| `hypridle` | Utility (Arch) | Power management and system suspend |
| `cliphist` | Utility (Arch) | Clipboard history for text and images |

---

# Repository Stars

We're pretty poor, XD

[Star History Chart](https://www.star-history.com/?repos=Diamantito-cup%2Fatomic-linux.git&time=date&legend=bottom-right) ([image](https://api.star-history.com/chart?repos=Diamantito-cup/atomic-linux.git&time=date&legend=top-left))

---

# Contributors 🫂

#### [@Diamantito-cup](https://github.com/Diamantito-cup) -- Lead Developer

#### [@Brainitech](https://github.com/Brainitech) -- Brain_Shell Developer

#### [@Axxel-otl](https://github.com/Axxel-otl) -- Documentation Translator

We're open to suggestions and recommendations, bug fixes, or any ideas that could make the system safer, more efficient, and more enjoyable for other users.

> Have a nice day! :3