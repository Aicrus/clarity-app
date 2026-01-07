#!/bin/bash

# Script de teste para Facebook Login - Clarity App
# Este script prepara o ambiente e testa o login do Facebook

echo "=========================================="
echo "Facebook Login Test - Clarity App"
echo "=========================================="
echo ""

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Função para verificar se um comando foi bem-sucedido
check_status() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Sucesso${NC}"
    else
        echo -e "${RED}❌ Erro${NC}"
        exit 1
    fi
}

# 1. Verificar configurações
echo -e "${BLUE}📋 Verificando configurações...${NC}"
echo ""

echo "App ID: 424112654916825"
echo "Package Name: com.newmanspirit.clarity"
echo "Debug Key Hash: DbN9yZPoDwT/SykSmrbuiBgxUS8="
echo "Release Key Hash: gzZlmH/aIm93ozmyG92g7mM9DDQ="
echo ""

# 2. Perguntar ao usuário se já configurou o Facebook Dashboard
echo -e "${YELLOW}⚠️  ANTES DE CONTINUAR:${NC}"
echo ""
echo "Você já adicionou os key hashes no Facebook Developer Dashboard?"
echo "1. Debug Hash: DbN9yZPoDwT/SykSmrbuiBgxUS8="
echo "2. Release Hash: gzZlmH/aIm93ozmyG92g7mM9DDQ="
echo ""
read -p "Confirma que adicionou os hashes? (s/n): " confirm_hashes

if [ "$confirm_hashes" != "s" ] && [ "$confirm_hashes" != "S" ]; then
    echo ""
    echo -e "${RED}❌ Por favor, adicione os key hashes primeiro!${NC}"
    echo ""
    echo "Acesse: https://developers.facebook.com/apps/424112654916825/"
    echo "Vá em: Configurações do app → Básico → Android → Hashes chave"
    echo ""
    exit 1
fi

echo ""
echo -e "${YELLOW}Você resolveu todas as 'ações necessárias' no Facebook Dashboard?${NC}"
echo "(API access restricted, Data Use Checkup, etc.)"
echo ""
read -p "Confirma? (s/n): " confirm_actions

if [ "$confirm_actions" != "s" ] && [ "$confirm_actions" != "S" ]; then
    echo ""
    echo -e "${RED}❌ Por favor, resolva todas as ações necessárias primeiro!${NC}"
    echo ""
    echo "Acesse: https://developers.facebook.com/apps/424112654916825/"
    echo "Clique no banner vermelho 'Ver ações necessárias'"
    echo ""
    exit 1
fi

echo ""
echo "=========================================="
echo ""

# 3. Limpar cache
echo -e "${BLUE}🧹 Limpando cache...${NC}"
flutter clean
check_status
echo ""

# 4. Obter dependências
echo -e "${BLUE}📦 Obtendo dependências...${NC}"
flutter pub get
check_status
echo ""

# 5. Atualizar pods do iOS
echo -e "${BLUE}🍎 Atualizando pods do iOS...${NC}"
cd ios
pod update FBSDKCoreKit FBSDKLoginKit
check_status
pod install
check_status
cd ..
echo ""

# 6. Perguntar qual plataforma testar
echo "=========================================="
echo ""
echo -e "${YELLOW}Qual plataforma você quer testar?${NC}"
echo "1. Android (Debug)"
echo "2. Android (Release)"
echo "3. iOS (Debug)"
echo "4. iOS (Release)"
echo ""
read -p "Escolha (1-4): " platform_choice

echo ""
echo "=========================================="
echo ""

case $platform_choice in
    1)
        echo -e "${BLUE}📱 Testando Android (Debug)...${NC}"
        echo ""
        flutter run --debug
        ;;
    2)
        echo -e "${BLUE}📱 Testando Android (Release)...${NC}"
        echo ""
        flutter build apk --release
        check_status
        echo ""
        echo -e "${GREEN}✅ APK gerado em: build/app/outputs/flutter-apk/app-release.apk${NC}"
        echo ""
        echo "Instale o APK no dispositivo e teste o login do Facebook"
        ;;
    3)
        echo -e "${BLUE}🍎 Testando iOS (Debug)...${NC}"
        echo ""
        flutter run --debug
        ;;
    4)
        echo -e "${BLUE}🍎 Testando iOS (Release)...${NC}"
        echo ""
        flutter build ios --release
        check_status
        echo ""
        echo -e "${GREEN}✅ Build iOS concluído${NC}"
        echo ""
        echo "Abra o Xcode e instale no dispositivo para testar"
        ;;
    *)
        echo -e "${RED}❌ Opção inválida${NC}"
        exit 1
        ;;
esac

echo ""
echo "=========================================="
echo ""
echo -e "${GREEN}🎉 Processo concluído!${NC}"
echo ""
echo -e "${YELLOW}📋 CHECKLIST DE TESTE:${NC}"
echo ""
echo "1. ✅ Abra o app"
echo "2. ✅ Clique em 'Login com Facebook'"
echo "3. ✅ O app deve abrir o Facebook app"
echo "4. ✅ Faça login no Facebook"
echo "5. ✅ Autorize as permissões"
echo "6. ✅ O app deve retornar autenticado"
echo ""
echo "Se houver erro, execute:"
echo "  flutter run --verbose"
echo ""
echo "E compartilhe o erro exato para análise."
echo ""
echo "=========================================="

