# -----------------------------------------------------------------------------
# CONFIGURACIÓN DE RUTAS (Equilibrio Local/Externo para no ensuciar el repositorio de git, GG)
# -----------------------------------------------------------------------------
USER_HOME := $(shell eval echo ~$$USER)

# Raíz del proyecto (ej: ~/Dev/atomic-linux)
PROJECT_DIR := $(shell pwd)

# Carpeta de trabajo PESADA (Externa al proyecto para no ensuciar el repositorio de git, me lo agradeceras después, jejejeje)
WORK_DIR := $(USER_HOME)/archiso-build

# Carpeta de salida para las ISOs (Interna del proyecto ~/Dev/atomic-linux/out o ~/atomic-linux/out)
OUT_DIR  := $(PROJECT_DIR)/out

SUDO     := sudo

# -----------------------------------------------------------------------------
# PALETA DE COLORES (Estética de la mas alta calidad ;p)
# -----------------------------------------------------------------------------
CLR_RESET   := \033[0m
CLR_CYAN    := \033[1;36m
CLR_GREEN   := \033[1;32m
CLR_YELLOW  := \033[1;33m
CLR_RED     := \033[1;31m
CLR_MAGENTA := \033[1;35m
CLR_BG_DARK := \033[48;5;234m

# -----------------------------------------------------------------------------
# BANNER ASCII:
# -----------------------------------------------------------------------------
define ATOMIC_BANNER
$(CLR_CYAN) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $(CLR_RESET)
$(CLR_MAGENTA)   █████╗ ████████╗ ██████╗ ███╗   ███╗██╗ ██████╗    $(CLR_CYAN)██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗$(CLR_RESET)
$(CLR_MAGENTA)  ██╔══██╗╚══██╔══╝██╔═══██╗████╗ ████║██║██╔════╝    $(CLR_CYAN)██║     ██║████╗  ██║██║   ██║╚██╗██╔╝$(CLR_RESET)
$(CLR_MAGENTA)  ███████║   ██║   ██║   ██║██╔████╔██║██║██║         $(CLR_CYAN)██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ $(CLR_RESET)
$(CLR_MAGENTA)  ██╔══██║   ██║   ██║   ██║██║╚██╔╝██║██║██║         $(CLR_CYAN)██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ $(CLR_RESET)
$(CLR_MAGENTA)  ██║  ██║   ██║   ╚██████╔╝██║ ╚═╝ ██║██║╚██████╗    $(CLR_CYAN)███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗$(CLR_RESET)
$(CLR_MAGENTA)  ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝ ╚═════╝    $(CLR_CYAN)╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝$(CLR_RESET)
$(CLR_CYAN) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $(CLR_RESET)
$(CLR_GREEN)  ⚛  Código Fuente:$(CLR_RESET) $(PROJECT_DIR)
$(CLR_GREEN)  🛠️  Caché de Compilación (Externa):$(CLR_RESET) $(WORK_DIR)/
$(CLR_GREEN)  📦 Destino de la ISO (Local):$(CLR_RESET) $(OUT_DIR)/
$(CLR_CYAN) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $(CLR_RESET)
endef

.PHONY: all clean iso info directories

all: info iso

info:
	@clear
	@echo -e "$(subst $(newline),\n,$(ATOMIC_BANNER))"

directories:
	@mkdir -p $(WORK_DIR)
	@mkdir -p $(OUT_DIR)

# -----------------------------------------------------------------------------
# NÚCLEO DE COMPILACIÓN (PELIGRO)
# -----------------------------------------------------------------------------
iso: info directories
	@echo -e "$(CLR_CYAN)[+]$(CLR_RESET) Sincronizando directorios de desarrollo..."
	@echo -e "\n$(CLR_YELLOW)🚀 Iniciando Atomic Build Engine...$(CLR_RESET)"
	@echo -e "$(CLR_BG_DARK)$(CLR_RED)⚠️  Se requieren privilegios sudo para montar los entornos chroot:$(CLR_RESET)"
	
	@# Ejecuta mkarchiso enviando la basura a ~/archiso-build y la ISO final a tu carpeta out/
	@$(SUDO) mkarchiso -v -w $(WORK_DIR) -o $(OUT_DIR) $(PROJECT_DIR)
	
	@if [ $$? -eq 0 ]; then \
		echo -e "\n$(CLR_GREEN)████████████████████████████████████████████████████████████$(CLR_RESET)"; \
		echo -e "$(CLR_GREEN)✔ ¡COMPILACIÓN COMPLETADA CON ÉXITO!$(CLR_RESET)"; \
		echo -e "$(CLR_GREEN)📦 Tu ISO lista en: $(OUT_DIR)/$(CLR_RESET)"; \
		echo -e "$(CLR_GREEN)████████████████████████████████████████████████████████████$(CLR_RESET)"; \
	else \
		echo -e "\n$(CLR_RED)❌ ERROR CRÍTICO: La compilación de Atomic-Linux ha fallado.$(CLR_RESET)"; \
		exit 1; \
	fi

clean: info
	@echo -e "$(CLR_YELLOW)[!] Purgando archivos pesados de compilación en $(WORK_DIR)...$(CLR_RESET)"
	@$(SUDO) rm -rf $(WORK_DIR)
	@echo -e "$(CLR_YELLOW)[!] Vaciando carpeta local de ISOs (out/)...$(CLR_RESET)"
	@$(SUDO) rm -rf $(OUT_DIR)
	@echo -e "$(CLR_GREEN)✔ Todo limpio. Sistema listo para compilar desde cero.$(CLR_RESET)"
