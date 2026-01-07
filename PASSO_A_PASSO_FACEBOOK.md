# 🔧 Passo a Passo: Corrigir Facebook Login - Clarity App

## 🎯 Objetivo
Resolver o erro: **"You can't use Facebook to log into this app or website because there's an issue with its implementation of Facebook Login"**

---

## 📊 Resumo dos Problemas Identificados

Baseado nos prints do Facebook Developer Dashboard:

| Problema | Status | Prioridade |
|----------|--------|------------|
| ❌ API access restricted | Crítico | 🔴 Alta |
| ❌ Invalid key hash | Crítico | 🔴 Alta |
| ⚠️ Graph API v18.0 obsoleta | Importante | 🟡 Média |
| ⚠️ iOS SDK desatualizado | Importante | 🟡 Média |
| ⚠️ Data Use Checkup pendente | Importante | 🟡 Média |

---

## 🚀 SOLUÇÃO RÁPIDA (5 Passos Essenciais)

### ✅ PASSO 1: Adicionar Key Hashes no Facebook Dashboard

**O QUE FAZER:**

1. Acesse: https://developers.facebook.com/apps/424112654916825/
2. Clique em **"Configurações do app"** (menu lateral esquerdo)
3. Clique em **"Básico"**
4. Role para baixo até encontrar a seção **"Android"**
5. Clique no botão **"Hashes chave"**
6. Adicione estes dois hashes (um de cada vez):

```
DbN9yZPoDwT/SykSmrbuiBgxUS8=
```

```
gzZlmH/aIm93ozmyG92g7mM9DDQ=
```

7. Clique em **"Salvar alterações"**

**POR QUE:** O erro "Invalid key hash" acontece porque o Facebook não reconhece a assinatura do seu app. Estes hashes validam que o app é legítimo.

---

### ✅ PASSO 2: Resolver "API Access Restricted"

**O QUE FAZER:**

1. No topo do Facebook Developer Dashboard, você verá um **banner vermelho**
2. Clique em **"Ver ações necessárias"** (ou "Responda às ações necessárias")
3. Complete TODAS as ações listadas:
   - ✅ Verificar domínios do aplicativo
   - ✅ Adicionar URL de política de privacidade
   - ✅ Adicionar URL de termos de serviço
   - ✅ Completar Data Use Checkup
   - ✅ Outras verificações pendentes

**POR QUE:** O Facebook restringe o acesso à API até que todas as verificações de segurança e privacidade sejam concluídas.

---

### ✅ PASSO 3: Atualizar Graph API para v19.0

**O QUE FAZER:**

1. No Facebook Developer Dashboard, vá em **"Configurações do app"**
2. Clique em **"Avançado"**
3. Role até a seção **"Atualizar a versão da API"**
4. Encontre **"Atualizar todas as chamadas"**
5. Mude de **v18.0** para **v19.0**
6. Encontre **"Upgrade calls for app roles"**
7. Mude de **v18.0** para **v19.0**
8. Clique em **"Salvar alterações"**

**POR QUE:** A API v18.0 expira em 26 de janeiro de 2026. Atualizar agora evita problemas futuros.

---

### ✅ PASSO 4: Completar Data Use Checkup

**O QUE FAZER:**

1. No topo do Facebook Developer Dashboard, clique no **ícone de sino** (notificações)
2. Procure por **"Urgent: Data Use Checkup Recertification Required"**
3. Clique nele
4. Complete o questionário:

**Perguntas comuns:**
- **Seu app coleta dados de usuários?** → Sim (email, nome, foto de perfil)
- **Como você usa os dados?** → Autenticação e personalização da experiência
- **Você compartilha dados com terceiros?** → Não
- **Você tem política de privacidade?** → Sim (https://clarityapp.it/clarity-privacy-policy/)
- **Você permite que usuários excluam seus dados?** → Sim

5. Envie a certificação

**POR QUE:** O Facebook exige que todos os apps certifiquem como usam os dados dos usuários.

---

### ✅ PASSO 5: Atualizar iOS SDK e Rebuild

**O QUE FAZER:**

No terminal, execute:

```bash
# 1. Vá para a pasta do projeto
cd /Users/paulomorales/clarity-app

# 2. Atualizar pods do iOS
cd ios
pod update FBSDKCoreKit FBSDKLoginKit
pod install
cd ..

# 3. Limpar cache
flutter clean

# 4. Obter dependências
flutter pub get

# 5. Rebuild do app
# Para Android:
flutter build apk --release

# Para iOS:
flutter build ios --release
```

**POR QUE:** Garante que você está usando as versões mais recentes do SDK do Facebook e que todas as configurações foram aplicadas.

---

## 🎯 CONFIGURAÇÕES ADICIONAIS (Recomendadas)

### 📝 Adicionar Domínio do App

1. Vá em **"Configurações do app"** → **"Básico"**
2. Encontre **"Domínios do aplicativo"**
3. Adicione: `clarityapp.it`
4. Salve

### 🔗 Configurar URL de Retorno

1. Vá em **"Configurações do app"** → **"Avançado"**
2. Encontre **"Autenticação do aplicativo"**
3. Em **"Autorizar URL de retorno de chamada"**, adicione:
   ```
   https://clarityapp.it/auth/callback
   ```
4. Salve

### 🗑️ Configurar URL de Exclusão de Dados

1. Vá em **"Configurações do app"** → **"Avançado"**
2. Encontre **"Baixar identificadores de usuário"**
3. Adicione a URL de callback para exclusão de dados:
   ```
   https://clarityapp.it/data-deletion-callback
   ```
4. Salve

---

## 🧪 COMO TESTAR

### Opção 1: Usar o Script Automático

```bash
cd /Users/paulomorales/clarity-app
./test_facebook_login.sh
```

### Opção 2: Teste Manual

1. **Desinstale** o app completamente do dispositivo
2. Execute:
   ```bash
   flutter clean
   flutter pub get
   ```
3. Instale a nova versão:
   ```bash
   # Android
   flutter run --release
   
   # iOS
   flutter run --release
   ```
4. Abra o app
5. Clique em **"Login com Facebook"**
6. O app deve:
   - ✅ Abrir o app do Facebook
   - ✅ Solicitar permissões
   - ✅ Retornar ao app Clarity autenticado

---

## 🔍 VERIFICAÇÃO FINAL

Antes de testar, certifique-se de que completou:

### No Facebook Developer Dashboard:
- [ ] ✅ Adicionou os 2 key hashes (debug e release)
- [ ] ✅ Resolveu o banner vermelho "API access restricted"
- [ ] ✅ Atualizou Graph API para v19.0
- [ ] ✅ Completou Data Use Checkup
- [ ] ✅ Adicionou domínio: clarityapp.it
- [ ] ✅ Configurou URL de retorno de chamada
- [ ] ✅ Configurou URL de exclusão de dados

### No código:
- [ ] ✅ Executou `pod update` no iOS
- [ ] ✅ Executou `flutter clean`
- [ ] ✅ Executou `flutter pub get`
- [ ] ✅ Fez rebuild do app

---

## ⚠️ NOTAS IMPORTANTES

### 🕐 Tempo de Propagação
Após fazer mudanças no Facebook Dashboard, aguarde **5-10 minutos** para que as alterações se propaguem nos servidores do Facebook.

### 🔐 Modo do App
Se o app estiver em **modo "Desenvolvimento"** no Facebook Dashboard, apenas usuários adicionados como testadores/desenvolvedores/administradores poderão fazer login.

Para permitir que QUALQUER usuário faça login:
1. Vá em **"Configurações do app"** → **"Básico"**
2. No topo, mude o status de **"Desenvolvimento"** para **"Publicado"**
3. ⚠️ Só faça isso após completar TODAS as verificações

### 📱 Key Hashes
Você precisa de **DOIS** key hashes:
- **Debug:** Para desenvolvimento/testes
- **Release:** Para produção/App Store/Play Store

Ambos já foram gerados e estão no arquivo `FACEBOOK_KEY_HASHES.txt`

---

## 🆘 SOLUÇÃO DE PROBLEMAS

### Erro: "Invalid key hash"
**Solução:** Verifique se adicionou AMBOS os key hashes no Facebook Dashboard

### Erro: "API access restricted"
**Solução:** Complete todas as "ações necessárias" no banner vermelho

### Erro: "App not setup"
**Solução:** Verifique se o App ID está correto: `424112654916825`

### Login abre navegador em vez do app Facebook
**Solução:** Normal em modo debug. Em release, deve abrir o app do Facebook

### Erro persiste após todas as correções
**Solução:** 
1. Aguarde 10 minutos (propagação)
2. Desinstale completamente o app
3. Execute `flutter clean`
4. Reinstale o app
5. Tire print do erro exato e compartilhe

---

## 📞 INFORMAÇÕES DO APP

```
App ID: 424112654916825
Package Name: com.newmanspirit.clarity
Client Token: 00e40b219f24ebf6c81ab4a3b77c2222
Bundle ID (iOS): com.newmanspirit.clarity

Debug Key Hash: DbN9yZPoDwT/SykSmrbuiBgxUS8=
Release Key Hash: gzZlmH/aIm93ozmyG92g7mM9DDQ=
```

---

## ✅ CHECKLIST FINAL

Antes de considerar o problema resolvido:

1. [ ] Todos os banners de erro no Facebook Dashboard foram resolvidos
2. [ ] Os 2 key hashes foram adicionados
3. [ ] Graph API está em v19.0
4. [ ] Data Use Checkup foi completado
5. [ ] iOS SDK foi atualizado (pod update)
6. [ ] App foi reconstruído (flutter clean + build)
7. [ ] Teste de login foi bem-sucedido
8. [ ] Login abre o app do Facebook (não navegador)
9. [ ] Usuário é autenticado com sucesso
10. [ ] Dados do usuário (nome, email) são recebidos corretamente

---

## 🎉 SUCESSO!

Se todos os passos foram seguidos e o login funciona:
- ✅ O app abre o Facebook
- ✅ Usuário faz login
- ✅ Retorna ao app autenticado
- ✅ Dados do usuário são carregados

**Parabéns! O Facebook Login está funcionando corretamente! 🎊**

---

## 📚 RECURSOS ADICIONAIS

- [Documentação Facebook Login](https://developers.facebook.com/docs/facebook-login/)
- [flutter_facebook_auth](https://pub.dev/packages/flutter_facebook_auth)
- [Troubleshooting Facebook Login](https://developers.facebook.com/docs/facebook-login/troubleshooting)

---

**Última atualização:** 5 de janeiro de 2026
**Versão do guia:** 1.0

