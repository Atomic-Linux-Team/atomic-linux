<h3 align="center">Sobre el Atomic-Linux Project</h3>

---

<p align="center">
<img width="225" height="225" alt="logo" src="https://github.com/user-attachments/assets/d9f3e8e0-f0a7-42b3-a671-9502c4ae6b69" />
</p>

> **Una experiencia de escritorio vanguardista y altamente optimizada basada en Arch Linux.**

<p align="center">
  <a href="https://www.gnu.org/licenses/gpl-3.0"><img src="https://img.shields.io/badge/License-GPLv3-f38ba8?style=flat-square" alt="License: GPL v3" /></a>
  <img src="https://img.shields.io/badge/Base-Arch%20Linux-89b4fa?style=flat-square&logo=arch-linux" alt="Base-Arch" />
  <img src="https://img.shields.io/badge/WM-Hyprland-26a69a?style=flat-square&logo=wayland" alt="WM-Hyprland" />
  <a href="https://github.com/Diamantito-cup/atomic-linux/releases"><img src="https://img.shields.io/github/v/release/Diamantito-cup/atomic-linux?style=flat-square&color=cba6f7&label=versi%C3%B3n" alt="Versión" /></a>
  <a href="https://github.com/Diamantito-cup/atomic-linux/stargazers"><img src="https://img.shields.io/github/stars/Diamantito-cup/atomic-linux?style=flat-square&color=f9e2af" alt="Estrellas" /></a>
  <a href="https://github.com/Diamantito-cup/atomic-linux/graphs/contributors"><img src="https://img.shields.io/github/contributors/Diamantito-cup/atomic-linux?style=flat-square&color=a6e3a1&label=colaboradores" alt="Colaboradores" /></a>
  <a href="https://www.patreon.com/cw/Atomic_Cathedral"><img src="https://img.shields.io/badge/Patreon-Apóyame-F96854?style=flat-square&logo=patreon&logoColor=white" alt="Patreon" /></a>
  <a href="https://discord.gg/sXP7zAhPy"><img src="https://img.shields.io/badge/Discord-Únete_al_Server-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
</p>

Atomic linux busca ser una opcion preconfigurada y "amigable" con el usuario, sin perder la potencia de arch linux, Atomic Linux trae preconfigurado un entorno hyprland vanguardista (con Lua), Brain_Shell (repositorio externo) y las herramientas necesarias para que funcione como un sistema estable y perfecto para aquellos devs que quieran una estetica anime, estilizar su escritorio y trbajar facilmente, ya que Atomic Linux ofrece software de desarrollo preinstalado (como VSCode, Onlyoffice, Zen-Browser y Yazi), que busca hacer sentir comodo al usuario

---

## 👁️ El Entorno Visual

Atomic Linux no es solo otra distribución; es un entorno de trabajo pensado para el rendimiento y la estética ciberpunk moderna. Impulsado por el compositor dinámico **Hyprland** y la recien lanzada **Brain_Shell** (desarrollada nativamente sobre Quickshell), ofrece transiciones fluidas, desenfoques avanzados y una cohesión visual total en GTK4/Libadwaita.

### 📸 Pre visualización

https://github.com/user-attachments/assets/24ab2d8e-0f31-47fa-8a56-c69094f4c050

---

## ✨ Características Principales

* **🚀 Rendimiento Atómico:** ISO optimizada al extremo (menos de 4.0 GB) con compresión XZ avanzada para un arranque ultra rápido.
* **🧠 Brain_Shell Integrada:** Interfaz de vanguardia basada en tecnologías QML/Modernas que sustituye los paneles tradicionales por un entorno inteligente.
* **🛡️ Login Elegante:** Pantalla de inicio de sesión gestionada por `greetd` + `ReGreet` en GTK4 nativo bajo Wayland.
* **📦 Atomic-Repo Personalizado:** Repositorio propio con herramientas exclusivas del sistema para actualizaciones modulares limpias.
* **🗺️ Atomic Tour:** Una aplicación de bienvenida interactiva construida en C y GTK4 para guiarte en tus primeros pasos por el sistema.

---

## 🛠️ Estructura del Repositorio

El árbol de este repositorio está organizado de forma modular para facilitar su compilación con `archiso`:

<details>
<summary>📂 Click para desplegar la estructura completa del repositorio (Árbol Tree)</summary>
  
```text
📦 Estructura del Proyecto (Ejes Principales)
.
├── airoot
├── airootfs
│   ├── boot
│   ├── etc
│   │   ├── calamares
│   │   ├── fastfetch
│   │   ├── greetd
│   │   ├── group
│   │   ├── hostname
│   │   ├── locale.conf
│   │   ├── localtime -> /usr/share/zoneinfo/UTC
│   │   ├── mkinitcpio.conf
│   │   ├── mkinitcpio.conf.d
│   │   ├── mkinitcpio.d
│   │   ├── modprobe.d
│   │   ├── motd
│   │   ├── os-release
│   │   ├── pacman.conf
│   │   ├── pacman.d
│   │   ├── passwd
│   │   ├── plymouth
│   │   ├── regreet.toml
│   │   ├── resolv.conf -> /run/systemd/resolve/stub-resolv.conf
│   │   ├── shadow
│   │   ├── skel
│   │   ├── ssh
│   │   ├── sudoers.d
│   │   └── systemd
│   ├── pacman.conf
│   ├── root
│   │   ├── atomic-repo
│   │   └── customize_airootfs.sh
│   ├── usr
│   │   ├── bin
│   │   ├── local
│   │   └── share
│   └── yay-next
│       ├── ci.Dockerfile
│       ├── clean.go
│       ├── clean_test.go
│       ├── cmd.go
│       ├── cmd_test.go
│       ├── completions
│       ├── CONTRIBUTING.md
│       ├── doc
│       ├── Dockerfile
│       ├── errors.go
│       ├── get.go
│       ├── get_ops_test.go
│       ├── go.mod
│       ├── go.sum
│       ├── LICENSE
│       ├── local_install.go
│       ├── local_install_test.go
│       ├── main.go
│       ├── Makefile
│       ├── pkg
│       ├── po
│       ├── print.go
│       ├── print_test.go
│       ├── query.go
│       ├── query_test.go
│       ├── README.md
│       ├── SECURITY.md
│       ├── sync.go
│       ├── sync_test.go
│       ├── testdata
│       ├── vcs.go
│       ├── vcs_ops_test.go
│       ├── vote.go
│       ├── vote_ops_test.go
│       ├── yay
│       └── yay.conf -> pkg/settings/yay.conf
├── assets
│   ├── 20260610_155820.mp4
│   └── logo.png
├── bootstrap_packages
├── efiboot
│   ├── boot
│   └── loader
│       ├── entries
│       └── loader.conf
├── grub
│   ├── grub.cfg
│   └── loopback.cfg
├── hyprmod
│   └── PKGBUILD
├── LICENSE
├── mirrorlist
├── out
│   ├── atomic-linux-2026.05.30-x86_64.iso
│   ├── atomic-linux-2026.05.31-x86_64.iso
│   ├── atomic-linux-2026.06.01-x86_64.iso
│   ├── atomic-linux-2026.06.03-x86_64.iso
│   ├── atomic-linux-2026.06.08-x86_64.iso
│   └── atomic-linux-2026.06.09-x86_64.iso
├── packages.x86_64
├── pacman.conf
├── profiledef.sh
├── README.md
└── syslinux
    ├── archiso_head.cfg
    ├── archiso_pxe.cfg
    ├── archiso_pxe-linux.cfg
    ├── archiso_sys.cfg
    ├── archiso_sys-linux.cfg
    ├── archiso_tail.cfg
    ├── splash.png
    └── syslinux.cfg
```

</details>

---

## Componentes integrados

| Componente | Tipo de Paquete | Función en Atomic Linux |
| :--- | :--- | :--- |
| `quickshell` | Core (AUR/Repo) | Motor de renderizado para la interfaz de Brain_Shell |
| `brain-shell` | Exclusivo (Repo externo) | Entorno de escritorio principal y widgets |
| `atomic-tour` | Aplicación (Repo) | Bienvenida e introducción interactiva en GTK4(todavia no integrada en esta versión) |
| `greetd` | Servicio (Arch) | Demonio de inicio de sesión seguro en segundo plano |
| `greetd-regreet` | Interfaz (Arch) | Pantalla de login visual en GTK4 nativo |
| `hypridle` | Utilidad (Arch) | Gestor de energía y suspensión del sistema |
| `cliphist` | Utilidad (Arch) | Historial de portapapeles para texto e imágenes |

---

## Colaboradores 🫂
[@Diamantito-cup](https://github.com/Diamantito-cup) -- Desarrollador principal

[@Brainitech](https://github.com/Brainitech) -- Desarrollador de Brain_Shell

Estamos abiertos a sugerencias y recomendaciones, arreglo de bugs o alguna idea para que el sistema sea más seguro, eficiente y entretenido para los demás usuarios.

-- Que tenga buen día :3
