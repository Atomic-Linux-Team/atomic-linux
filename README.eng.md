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
│   │   ├── fastfetch
│   │   ├── greetd
│   │   ├── group
│   │   ├── hostname
│   │   ├── locale.conf
│   │   ├── localtime -> /usr/share/zoneinfo/UTC
│   │   ├── mkinitcpio.conf
│   │   ├── mkinitcpio.conf.d
│   │   ├── mkinitcpio.d
│   │   ├── modprobe.d
│   │   ├── motd
│   │   ├── os-release
│   │   ├── pacman.conf
│   │   ├── pacman.d
│   │   ├── passwd
│   │   ├── plymouth
│   │   ├── regreet.toml
│   │   ├── resolv.conf -> /run/systemd/resolve/stub-resolv.conf
│   │   ├── shadow
│   │   ├── skel
│   │   ├── ssh
│   │   ├── sudoers.d
│   │   └── systemd
│   ├── pacman.conf
│   ├── root
│   │   ├── .automated_script.sh
│   │   ├── .gnupg
│   │   ├── .zlogin
│   │   ├── atomic-repo
│   │   └── customize_airootfs.sh
│   ├── usr
│   │   ├── bin
│   │   ├── local
│   │   └── share
│   └── yay-next
│       ├── .dockerignore
│       ├── .github
│       ├── .gitignore
│       ├── .golangci.yml
│       ├── .pre-commit-config.yaml
│       ├── ci.Dockerfile
│       ├── clean.go
│       ├── clean_test.go
│       ├── cmd.go
│       ├── cmd_test.go
│       ├── completions
│       ├── CONTRIBUTING.md
│       ├── doc
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
│       ├── po
│       ├── print.go
│       ├── print_test.go
│       ├── query.go
│       ├── query_test.go
│       ├── README.md
│       ├── SECURITY.md
│       ├── sync.go
│       ├── sync_test.go
│       ├── testdata
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
├── README.md
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