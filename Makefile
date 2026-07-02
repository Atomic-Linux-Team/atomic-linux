# -----------------------------------------------------------------------------
# CONFIGURACIÓN DE RUTAS
# -----------------------------------------------------------------------------
USER_HOME   := $(shell eval echo ~$$USER)
PROJECT_DIR := $(shell pwd)
WORK_DIR    := $(USER_HOME)/archiso-build
OUT_DIR     := $(PROJECT_DIR)/out
SUDO        := sudo

# -----------------------------------------------------------------------------
# PALETA DE COLORES (Estética de la más alta calidad ;P)
# -----------------------------------------------------------------------------
CLR_RESET   := \033[0m
CLR_CYAN    := \033[1;36m
CLR_GREEN   := \033[1;32m
CLR_YELLOW  := \033[1;33m
CLR_RED     := \033[1;31m
CLR_MAGENTA := \033[1;35m
CLR_BG_DARK := \033[48;5;234m

.PHONY: all clean iso info directories

all: info iso

# -----------------------------------------------------------------------------
# IMPRESIÓN DEL BANNER (usando printf para evitar ciertos... errores, jejejeje)
# -----------------------------------------------------------------------------
info:
	@clear
	@printf "$(CLR_CYAN) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $(CLR_RESET)\n"
	@printf "$(CLR_MAGENTA)   █████╗ ████████╗ ██████╗ ███╗   ███╗██╗ ██████╗    $(CLR_CYAN)██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗$(CLR_RESET)\n"
	@printf "$(CLR_MAGENTA)  ██╔══██╗╚══██╔══╝██╔═══██╗████╗ ████║██║██╔════╝    $(CLR_CYAN)██║     ██║████╗  ██║██║   ██║╚██╗██╔╝$(CLR_RESET)\n"
	@printf "$(CLR_MAGENTA)  ███████║   ██║   ██║   ██║██╔████╔██║██║██║         $(CLR_CYAN)██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝ $(CLR_RESET)\n"
	@printf "$(CLR_MAGENTA)  ██╔══██║   ██║   ██║   ██║██║╚██╔╝██║██║██║         $(CLR_CYAN)██║     ██║██║╚██╗██║██║   ██║ ██╔██╗ $(CLR_RESET)\n"
	@printf "$(CLR_MAGENTA)  ██║  ██║   ██║   ╚██████╔╝██║ ╚═╝ ██║██║╚██████╗    $(CLR_CYAN)███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗$(CLR_RESET)\n"
	@printf "$(CLR_MAGENTA)  ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝ ╚═════╝    $(CLR_CYAN)╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝$(CLR_RESET)\n"
	@printf "$(CLR_CYAN) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $(CLR_RESET)\n"
	@printf "$(CLR_GREEN)  ⚛  Código Fuente:$(CLR_RESET) %s\n" "$(PROJECT_DIR)"
	@printf "$(CLR_GREEN)  🛠️  Caché de Compilación (Externa):$(CLR_RESET) %s/\n" "$(WORK_DIR)"
	@printf "$(CLR_GREEN)  📦 Destino de la ISO (Local):$(CLR_RESET) %s/\n" "$(OUT_DIR)"
	@printf "$(CLR_CYAN) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ $(CLR_RESET)\n"

directories:
	@mkdir -p $(WORK_DIR)
	@mkdir -p $(OUT_DIR)

# -----------------------------------------------------------------------------
# NÚCLEO DE COMPILACIÓN (PELIGRO)
# -----------------------------------------------------------------------------
iso: info directories
	@echo -e "$(CLR_CYAN)[+]$(CLR_RESET) Sincronizando directorios de desarrollo..."
	@echo -e "\n$(CLR_YELLOW)🚀 Iniciando Atomic Build Engine(core)...$(CLR_RESET)"
	@echo -e "$(CLR_BG_DARK)$(CLR_RED)⚠️  Se requieren privilegios sudo para montar los entornos chroot:$(CLR_RESET)"
	
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
	@echo -e "$(CLR_GREEN)✔ Todo limpio. Sistema listo para compilar desde cero.$(CLR_RESET)"
