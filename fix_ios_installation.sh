#!/bin/bash

# Script para resolver erro "@dartvm (1-82)" na instalação iOS
# Uso: ./fix_ios_installation.sh

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}🔧 Corrigindo Erro de Instalação iOS${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# Função para verificar se um comando foi bem-sucedido
check_status() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Sucesso${NC}"
    else
        echo -e "${RED}❌ Erro${NC}"
        exit 1
    fi
}

# 1. Limpar build do Flutter
echo -e "${YELLOW}1. Limpando build do Flutter...${NC}"
flutter clean
check_status
echo ""

# 2. Reinstalar dependências
echo -e "${YELLOW}2. Reinstalando dependências do Flutter...${NC}"
flutter pub get
check_status
echo ""

# 3. Limpar e reinstalar pods
echo -e "${YELLOW}3. Limpando e reinstalando pods do iOS...${NC}"
cd ios

# Remover pods antigos
if [ -d "Pods" ]; then
    echo "   Removendo Pods..."
    rm -rf Pods
fi

if [ -f "Podfile.lock" ]; then
    echo "   Removendo Podfile.lock..."
    rm -f Podfile.lock
fi

# Desintegrar pods (se pod deintegrate estiver disponível)
if command -v pod &> /dev/null; then
    echo "   Desintegrando pods..."
    pod deintegrate 2>/dev/null || true
fi

# Instalar pods
echo "   Instalando pods..."
pod install
check_status

cd ..
echo ""

# 4. Limpar cache do Xcode
echo -e "${YELLOW}4. Limpando cache do Xcode...${NC}"
if [ -d ~/Library/Developer/Xcode/DerivedData ]; then
    rm -rf ~/Library/Developer/Xcode/DerivedData/*
    echo -e "${GREEN}✅ Cache do Xcode limpo${NC}"
else
    echo -e "${YELLOW}⚠️  Diretório DerivedData não encontrado${NC}"
fi
echo ""

# 5. Verificar configuração
echo -e "${YELLOW}5. Verificando configuração...${NC}"
if [ ! -f "ios/Runner.xcworkspace" ]; then
    echo -e "${RED}❌ Runner.xcworkspace não encontrado!${NC}"
    exit 1
fi
echo -e "${GREEN}✅ Workspace encontrado${NC}"
echo ""

# 6. Resumo
echo -e "${BLUE}========================================${NC}"
echo -e "${GREEN}✅ Limpeza concluída!${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""
echo -e "${YELLOW}Próximos passos:${NC}"
echo "1. Certifique-se de que o app foi DESINSTALADO do dispositivo"
echo "2. Abra o Xcode e verifique o code signing:"
echo "   ${BLUE}open ios/Runner.xcworkspace${NC}"
echo "3. Tente executar novamente:"
echo "   ${BLUE}flutter run${NC}"
echo ""
echo -e "${YELLOW}Se o problema persistir:${NC}"
echo "- Execute: ${BLUE}flutter run --verbose${NC} para ver logs detalhados"
echo "- Verifique o guia: ${BLUE}SOLUCAO_ERRO_INSTALACAO_IOS.md${NC}"
echo ""
