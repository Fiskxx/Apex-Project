cat << 'EOF' > ~/apex.sh
#!/data/data/com.termux/files/usr/bin/bash
export RISH_APPLICATION_ID="com.termux"
clear

# LINK DA SUA HOSPEDAGEM (GITHUB)
SERVER="https://raw.githubusercontent.com/SEU_USUARIO/Apex-Project/main"

DNA=$(~/rish -c "settings get secure android_id" 2>/dev/null)

echo "--- [ APEX ENGINE CLOUD ] ---"
echo "VERIFICANDO DNA: $DNA"

# 1. VALIDAÇÃO NO SERVIDOR
# O script baixa a lista de autorizados e checa o DNA do cara
curl -s "$SERVER/database.txt" | grep -q "$DNA"
IS_PRO=$?

if [ $IS_PRO -eq 0 ]; then
    echo "STATUS: ACESSO PRO CONFIRMADO!"
    # Baixa e executa o veneno PRO em tempo real (sem salvar o código no cel do cara)
    curl -s "$SERVER/pro.sh" | bash
else
    echo "STATUS: MODO FREE ATIVADO."
    curl -s "$SERVER/free.sh" | bash
fi
EOF
