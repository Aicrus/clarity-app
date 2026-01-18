#!/bin/bash

# Script para limpar completamente o build do iOS quando Shift+Cmd+K falha
# Uso: ./clean_build.sh

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}🧹 Limpando Build do iOS${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# Função para verificar se um comando foi bem-sucedido
check_status() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Sucesso${NC}"
    else
        echo -e "${YELLOW}⚠️  Aviso (pode ser normal)${NC}"
    fi
}

# 1. Limpar build do Flutter
echo -e "${YELLOW}1. Limpando build do Flutter...${NC}"
cd /Users/paulomorales/clarity-app
flutter clean
check_status
echo ""

# 2. Limpar build do iOS
echo -e "${YELLOW}2. Limpando build do iOS...${NC}"
cd ios

# Remover pasta build se existir
if [ -d "build" ]; then
    echo "   Removendo pasta build..."
    rm -rf build
    check_status
fi

# Remover DerivedData do projeto específico
if [ -d ~/Library/Developer/Xcode/DerivedData ]; then
    echo "   Limpando DerivedData do Xcode..."
    # Remove apenas os dados relacionados a este projeto
    find ~/Library/Developer/Xcode/DerivedData -name "*Runner*" -type d -exec rm -rf {} + 2>/dev/null || true
    find ~/Library/Developer/Xcode/DerivedData -name "*clarity*" -type d -exec rm -rf {} + 2>/dev/null || true
    check_status
fi

# 3. Limpar arquivos de usuário do Xcode
echo -e "${YELLOW}3. Limpando arquivos de usuário do Xcode...${NC}"
find . -name "*.xcuserstate" -delete 2>/dev/null || true
find . -name "*.xcuserdatad" -type d -exec rm -rf {} + 2>/dev/null || true
check_status
echo ""

# 4. Limpar módulos do Swift
echo -e "${YELLOW}4. Limpando módulos do Swift...${NC}"
if [ -d ~/Library/Developer/Xcode/DerivedData ]; then
    find ~/Library/Developer/Xcode/DerivedData -name "ModuleCache" -type d -exec rm -rf {} + 2>/dev/null || true
    check_status
fi
echo ""

# 5. Limpar cache do CocoaPods
echo -e "${YELLOW}5. Limpando cache do CocoaPods...${NC}"
pod cache clean --all 2>/dev/null || true
check_status
echo ""

# 6. Reinstalar pods (opcional, descomente se necessário)
# echo -e "${YELLOW}6. Reinstalando pods...${NC}"
# pod install
# check_status
# echo ""

# 7. Resumo
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}✅ Limpeza concluída!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "${BLUE}Próximos passos:${NC}"
echo "1. Feche o Xcode completamente"
echo "2. Abra o projeto novamente: ios/Runner.xcworkspace"
echo "3. Tente compilar novamente"
echo ""
