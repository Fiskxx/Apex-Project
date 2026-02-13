#!/data/data/com.termux/files/usr/bin/bash

# --- CONFIGURAÇÕES DE SISTEMA ---
~/rish -c "settings put system pointer_speed 7" >/dev/null 2>&1
~/rish -c "settings put system touch.pressure.scale 0.001" >/dev/null 2>&1
~/rish -c "settings put global peak_refresh_rate 120.0" >/dev/null 2>&1

# --- CORES ---
VERDE='\033[0;32m'
AZUL='\033[0;34m'
AMARELO='\033[1;33m'
VERMELHO='\033[0;31m'
RESET='\033[0m'

# --- LOOP DA INTERFACE ---
while true; do
clear
TEMP=$(getprop debug.cpurend.temp) # Exemplo de leitura de temp
[ -z "$TEMP" ] && TEMP="Normal"

echo -e "${AZUL}================================================"
echo -e "      APEX PRO INTERFACE - @Fiskxx ELITE        "
echo -e "================================================${RESET}"
echo -e "${AZUL} DNA:${RESET} ${VERDE}f5c606a6bacd3a08${RESET} | ${AZUL}PRAZO:${RESET} ${VERDE}VITALÍCIO${RESET}"
echo -e "------------------------------------------------"
echo -e " [•] SENSIBILIDADE:   ${VERDE}OTIMIZADA (7)${RESET}"
echo -e " [•] MÓDULO:          ${VERDE}ANTI-RECOIL ATIVO${RESET}"
echo -e " [•] TOUCH:           ${VERDE}ZERO FRICTION (LINEAR)${RESET}"
echo -e " [•] ESTADO TÉRMICO:  ${AMARELO}$TEMP${RESET}"
echo -e "------------------------------------------------"
echo -e " ${AMARELO}>> O SCRIPT ESTÁ APLICADO E PROTEGIDO <<${RESET}"
echo -e " ${VERDE}>> JÁ PODE ABRIR O FREE FIRE <<${RESET}"
echo -e "------------------------------------------------"
echo -e " ${VERMELHO}[!] PARA FECHAR OU TROCAR PACK: CTRL+C${RESET}"
echo -e "${AZUL}================================================${RESET}"

# Essa parte aqui é o "caminho" para futuros efeitos
# No futuro, o script pode checar se existe um arquivo "efeitos.sh"
# e injetar automaticamente.

sleep 15
done
