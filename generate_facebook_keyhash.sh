#!/bin/bash

# Script para gerar Facebook Key Hash para Android
# Este script gera os hashes necessários para configurar no Facebook Developer Dashboard

echo "=========================================="
echo "Facebook Key Hash Generator - Clarity App"
echo "=========================================="
echo ""

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verifica se keytool está instalado
if ! command -v keytool &> /dev/null; then
    echo -e "${RED}❌ ERRO: keytool não encontrado. Certifique-se de que o JDK está instalado.${NC}"
    exit 1
fi

# Verifica se openssl está instalado
if ! command -v openssl &> /dev/null; then
    echo -e "${RED}❌ ERRO: openssl não encontrado. Instale o openssl.${NC}"
    exit 1
fi

echo -e "${YELLOW}📱 Gerando Key Hashes para Android...${NC}"
echo ""

# 1. Debug Key Hash (usado durante desenvolvimento)
echo -e "${GREEN}1️⃣  DEBUG KEY HASH (Desenvolvimento)${NC}"
echo "-------------------------------------------"

# Localização padrão do debug keystore no macOS
DEBUG_KEYSTORE="$HOME/.android/debug.keystore"

if [ -f "$DEBUG_KEYSTORE" ]; then
    echo "Keystore encontrada: $DEBUG_KEYSTORE"
    echo ""
    echo "Hash gerado:"
    DEBUG_HASH=$(keytool -exportcert -alias androiddebugkey -keystore "$DEBUG_KEYSTORE" -storepass android -keypass android 2>/dev/null | openssl sha1 -binary | openssl base64)
    echo -e "${GREEN}$DEBUG_HASH${NC}"
    echo ""
    echo "✅ Adicione este hash no Facebook Developer Dashboard (seção Android)"
else
    echo -e "${RED}❌ Debug keystore não encontrada em: $DEBUG_KEYSTORE${NC}"
fi

echo ""
echo "=========================================="
echo ""

# 2. Release Key Hash (usado em produção)
echo -e "${GREEN}2️⃣  RELEASE KEY HASH (Produção)${NC}"
echo "-------------------------------------------"

# Procura pela keystore de release
RELEASE_KEYSTORE="android/app/clarity-keystore.jks"

if [ -f "$RELEASE_KEYSTORE" ]; then
    echo "Keystore encontrada: $RELEASE_KEYSTORE"
    echo ""
    echo "Digite a senha da keystore de release:"
    read -s KEYSTORE_PASSWORD
    echo ""
    echo "Digite o alias da chave (geralmente 'clarity' ou 'key'):"
    read KEY_ALIAS
    echo ""
    echo "Hash gerado:"
    RELEASE_HASH=$(keytool -exportcert -alias "$KEY_ALIAS" -keystore "$RELEASE_KEYSTORE" -storepass "$KEYSTORE_PASSWORD" 2>/dev/null | openssl sha1 -binary | openssl base64)
    
    if [ -z "$RELEASE_HASH" ]; then
        echo -e "${RED}❌ Erro ao gerar hash. Verifique a senha e o alias.${NC}"
    else
        echo -e "${GREEN}$RELEASE_HASH${NC}"
        echo ""
        echo "✅ Adicione este hash no Facebook Developer Dashboard (seção Android)"
    fi
else
    echo -e "${YELLOW}⚠️  Release keystore não encontrada em: $RELEASE_KEYSTORE${NC}"
    echo ""
    echo "Se você tem a keystore em outro local, execute manualmente:"
    echo ""
    echo "keytool -exportcert -alias SEU_ALIAS -keystore CAMINHO_DA_KEYSTORE | openssl sha1 -binary | openssl base64"
fi

echo ""
echo "=========================================="
echo ""

# 3. Instruções finais
echo -e "${YELLOW}📋 PRÓXIMOS PASSOS:${NC}"
echo ""
echo "1. Copie os hashes gerados acima"
echo "2. Acesse: https://developers.facebook.com/apps/424112654916825/"
echo "3. Vá em: Configurações do app → Básico"
echo "4. Role até a seção 'Android'"
echo "5. Clique em 'Hashes chave'"
echo "6. Cole AMBOS os hashes (debug e release)"
echo "7. Salve as alterações"
echo ""
echo "=========================================="
echo ""

# 4. Informações adicionais
echo -e "${YELLOW}ℹ️  INFORMAÇÕES DO APP:${NC}"
echo ""
echo "App ID: 424112654916825"
echo "Package Name: com.newmanspirit.clarity"
echo "Client Token: 00e40b219f24ebf6c81ab4a3b77c2222"
echo ""
echo "=========================================="

