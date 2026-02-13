#!/data/data/com.termux/files/usr/bin/bash

# --- INJEÇÃO DE PERFORMANCE ---
~/rish -c "settings put system pointer_speed 7" >/dev/null 2>&1
~/rish -c "settings put system touch.pressure.scale 0.001" >/dev/null 2>&1
~/rish -c "settings put global peak_refresh_rate 120.0" >/dev/null 2>&1

# --- CORES ---
VERDE='\033[0;32m'
AZUL='\033[0;34m'
AMARELO='\033[1;33m'
VERMELHO='\033[0;31m'
RESET='\033[0m'

# --- LOOP DA INTERFACE (PARA NÃO FECHAR) ---
while true; do
clear
echo -e "${AZUL}================================================"
echo -e "      APEX PRO INTERFACE - @Fiskxx ELITE        "
echo -e "================================================${RESET}"
echo -e "${AZUL} DNA:${RESET} ${VERDE}f5c606a6bacd3a08${RESET}"
echo -e "${AZUL} PRAZO:${RESET} ${VERDE}ACESSO VITALÍCIO${RESET}"
echo -e "------------------------------------------------"
echo -e " STATUS SENSIBILIDADE:   ${VERDE}OTIMIZADA (RAW)${RESET}"
echo -e " STATUS MOVIMENTAÇÃO:    ${VERDE}ZERO FRICTION${RESET}"
echo -e " STATUS DO MOTOR:        ${VERDE}EXECUTANDO...${RESET}"
echo -e "------------------------------------------------"
echo -e " ${AMARELO}>> O SCRIPT ESTÁ ATIVO NO FUNDO <<${RESET}"
echo -e " ${AMARELO}>> PODE MINIMIZAR E ABRIR O JOGO <<${RESET}"
echo -e "------------------------------------------------"
echo -e " ${VERMELHO}[!] PARA DESATIVAR: CTRL + C${RESET}"
echo -e "${AZUL}================================================${RESET}"

# Re-aplica a sensibilidade a cada 15 segundos (Segurança contra o sistema resetar)
~/rish -c "settings put system pointer_speed 7" >/dev/null 2>&1

sleep 15
done
