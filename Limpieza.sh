# Obtenemos la ruta absoluta de ESTE script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Cargamos la librería usando una ruta estricta (no depender de ~)
source "${SCRIPT_DIR}/../Libs-Bash/ABSL.sh"

# Si sudo cambió el usuario, buscamos el home del usuario original
if [[ -n "$SUDO_USER" ]]; then
  USER_HOME="$(getent passwd "$SUDO_USER" | cut -d: -f6)"
else
  USER_HOME="$HOME"
fi

PROJECT_DIR="${SCRIPT_DIR}"
WORK_DIR="${USER_HOME}/archiso-build"
OUT_DIR="${PROJECT_DIR}/out"
VERSION="v0.1-Dev"

absl core "(ui:banner:custom)" "LIMPIANDO COMPILACIONES" "$CLR_BLUE" "single"
absl core "(log:info)" "Distro: $(absl core "(sys:get:distro)")"
printf "${CLR_MAGENTA}  Versión de ABSL:${CLR_RESET} %s\n" "$VERSION"
printf "${CLR_MAGENTA}  Documentación disponible:${CLR_RESET} README.md, examples, Wiki\n"
printf "${CLR_CYAN} ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ${CLR_RESET}\n"

absl core "(sys:fs:exists)" "$WORK_DIR"

absl core "(sys:fs:exists)" "$OUT_DIR"

absl core "(sys:ensure:root)"

if absl core "(ui:ask:yes:no)" "¿Desea borrar la carpeta de compilación y el directorio donde se guardan las ISOs compiladas?"; then

  absl core "(ui:spinner:start)" "Iniciando limpieza de directorios..."

  absl core "(sys:fs:cleanup)" "$WORK_DIR"
  absl core "(sys:fs:cleanup)" "$OUT_DIR"

  sleep 3

  absl core "(ui:spinner:stop)"

  absl core "(log:success)" "Limpieza completada con exito :3"

fi
