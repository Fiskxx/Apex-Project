#!/data/data/com.termux/files/usr/bin/bash

# 1. APLICA AS CONFIGURAÇÕES DE SENSIBILIDADE
~/rish -c "settings put system pointer_speed 7" >/dev/null 2>&1
~/rish -c "settings put system touch.pressure.scale 0.001" >/dev/null 2>&1

# 2. DEFINE AS CORES
V='\033[0;32m'
A='\033[0;34m'
AM='\033[1;33m'
R='\033[0m'

# 3. O LOOP QUE MANTÉM A INTERFACE ABERTA
while true; do
clear
echo -e "${A}================================================${R}"
echo -e "      APEX PRO INTERFACE - @Fiskxx ELITE        "
echo -e "${A}================================================${R}"
echo -e " DNA: ${V}f5c606a6bacd3a08${R} | STATUS: ${V}PRO${R}"
echo -e "------------------------------------------------"
echo -e " [•] SENSIBILIDADE:   ${V}OTIMIZADA (RAW)${R}"
echo -e " [•] MOVIMENTAÇÃO:    ${V}ZERO FRICTION${R}"
echo -e " [•] PROTEÇÃO:        ${V}SENTINEL ATIVO${R}"
echo -e "------------------------------------------------"
echo -e " ${AM}>> O MOTOR ESTÁ RODANDO NO FUNDO <<${R}"
echo -e " ${AM}>> NÃO FECHE O TERMUX PARA MANTER O CAPA <<${R}"
echo -e "------------------------------------------------"
echo -e " Pressione CTRL+C para parar."
echo -e "${A}================================================${R}"

# Re-aplica a sensibilidade para o sistema não resetar
~/rish -c "settings put system pointer_speed 7" >/dev/null 2>&1

sleep 15
done
