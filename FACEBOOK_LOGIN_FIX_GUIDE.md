# Guia de Correção do Facebook Login - Clarity App

## 🔴 PROBLEMAS IDENTIFICADOS

Baseado na análise do dashboard do Facebook Developer e do erro no app, identificamos:

1. **API access restricted** - Acesso à API restrito
2. **Invalid key hash** - Hash da chave Android não configurada corretamente
3. **Graph API v18.0 obsoleta** - Precisa migrar para v19.0
4. **iOS SDK desatualizado** - Versão 17.0.3, precisa atualizar para 18.0.2
5. **Data Use Checkup pendente** - Verificação de uso de dados não concluída

---

## ✅ SOLUÇÃO COMPLETA

### PASSO 1: Resolver "API access restricted"

No Facebook Developer Dashboard:

1. Acesse: https://developers.facebook.com/apps/424112654916825/
2. Clique no banner vermelho **"Ver ações necessárias"**
3. Complete todas as ações pendentes:
   - ✅ Verificar domínios do aplicativo
   - ✅ Adicionar URL de política de privacidade (já configurado: https://clarityapp.it/clarity-privacy-policy/)
   - ✅ Adicionar URL de termos de serviço
   - ✅ Completar Data Use Checkup

### PASSO 2: Adicionar Key Hash do Android

O erro mostra que o key hash `DbN9yZPoDwT/SykSmrbuiBgxUS8=` não está na lista.

**No Facebook Developer Dashboard:**

1. Vá para **Configurações do app** → **Básico**
2. Role até a seção **Android**
3. Clique em **"Hashes chave"**
4. Adicione o seguinte hash (que aparece no erro):
   ```
   DbN9yZPoDwT/SykSmrbuiBgxUS8=
   ```
5. **IMPORTANTE:** Você também precisa adicionar o hash da sua keystore de release

**Para gerar o hash da keystore de release:**

```bash
# No terminal, execute:
keytool -exportcert -alias clarity -keystore ~/clarity-app/android/app/clarity-keystore.jks | openssl sha1 -binary | openssl base64
```

Quando pedir a senha, use a senha da sua keystore (definida em `key.properties`).

O comando retornará um hash como: `XxXxXxXxXxXxXxXxXxXxXxXxXxX=`

**Adicione AMBOS os hashes no Facebook Dashboard:**
- `DbN9yZPoDwT/SykSmrbuiBgxUS8=` (debug/desenvolvimento)
- O hash gerado acima (release/produção)

### PASSO 3: Atualizar Graph API para v19.0

No Facebook Developer Dashboard:

1. Vá para **Configurações do app** → **Avançado**
2. Role até **"Atualizar a versão da API"**
3. Localize **"Atualizar todas as chamadas"**
4. Mude de **v18.0** para **v19.0**
5. Também atualize **"Upgrade calls for app roles"** para **v19.0**
6. Clique em **"Salvar alterações"**

### PASSO 4: Completar Data Use Checkup

No Facebook Developer Dashboard:

1. Vá para **Caixa de Entrada de alertas** (ícone de sino no topo)
2. Clique em **"Urgent: Data Use Checkup Recertification Required"**
3. Complete o questionário:
   - **Seu app coleta dados de usuários?** Sim (email, nome público)
   - **Como você usa os dados?** Autenticação e personalização
   - **Você compartilha dados com terceiros?** Não
   - **Você tem política de privacidade?** Sim (https://clarityapp.it/clarity-privacy-policy/)
4. Envie a certificação

### PASSO 5: Configurar "Autorizar URL de retorno de chamada"

No Facebook Developer Dashboard:

1. Vá para **Configurações do app** → **Avançado**
2. Localize **"Autenticação do aplicativo"**
3. Em **"Autorizar URL de retorno de chamada"**, adicione:
   ```
   https://clarityapp.it/auth/callback
   ```
4. Salve as alterações

### PASSO 6: Adicionar Domínios do Aplicativo

No Facebook Developer Dashboard:

1. Vá para **Configurações do app** → **Básico**
2. Em **"Domínios do aplicativo"**, adicione:
   ```
   clarityapp.it
   ```
3. Salve as alterações

### PASSO 7: Verificar Configuração de Baixar Identificadores de Usuário

No Facebook Developer Dashboard:

1. Vá para **Configurações do app** → **Avançado**
2. Role até **"Baixar identificadores de usuário"**
3. Certifique-se de que está configurado corretamente
4. Se necessário, adicione a URL de callback para exclusão de dados:
   ```
   https://clarityapp.it/data-deletion-callback
   ```

### PASSO 8: Atualizar iOS SDK (se necessário)

O dashboard mostra que o iOS SDK está na versão 17.0.3, mas deveria estar em 18.0.2.

**Já está configurado corretamente no Podfile**, mas você precisa executar:

```bash
cd ios
pod update FBSDKCoreKit FBSDKLoginKit
pod install
cd ..
```

### PASSO 9: Publicar o App (Modo Produção)

Atualmente seu app está em modo de desenvolvimento. Para que todos os usuários possam fazer login:

1. Vá para **Configurações do app** → **Básico**
2. No topo da página, mude o status do app de **"Desenvolvimento"** para **"Publicado"**
3. Você precisará completar todas as verificações antes de publicar

---

## 🔧 COMANDOS PARA EXECUTAR

Após fazer as alterações no Facebook Dashboard, execute no terminal:

```bash
# 1. Gerar o hash da keystore de release
keytool -exportcert -alias clarity -keystore ~/clarity-app/android/app/clarity-keystore.jks | openssl sha1 -binary | openssl base64

# 2. Atualizar pods do iOS
cd ios
pod update FBSDKCoreKit FBSDKLoginKit
pod install
cd ..

# 3. Limpar build cache
flutter clean

# 4. Reinstalar dependências
flutter pub get

# 5. Rebuild do app
# Para Android:
flutter build apk --release

# Para iOS:
flutter build ios --release
```

---

## 📋 CHECKLIST DE VERIFICAÇÃO

Antes de testar novamente, certifique-se de que completou:

### No Facebook Developer Dashboard:
- [ ] Resolveu todas as "ações necessárias" (banner vermelho)
- [ ] Adicionou os key hashes do Android (debug E release)
- [ ] Atualizou Graph API para v19.0
- [ ] Completou Data Use Checkup
- [ ] Adicionou domínio: clarityapp.it
- [ ] Configurou URL de retorno de chamada
- [ ] Configurou URL de exclusão de dados
- [ ] Verificou que iOS SDK está atualizado (18.0.2)
- [ ] Publicou o app (modo produção) - OPCIONAL se ainda está testando

### No código:
- [ ] Executou `pod update` e `pod install` no iOS
- [ ] Executou `flutter clean`
- [ ] Executou `flutter pub get`
- [ ] Fez rebuild do app

---

## 🧪 TESTE

Após completar todos os passos:

1. Desinstale completamente o app do dispositivo
2. Instale a nova versão
3. Tente fazer login com Facebook
4. O app deve:
   - Abrir o app do Facebook
   - Solicitar permissões
   - Retornar ao app Clarity autenticado

---

## ⚠️ NOTAS IMPORTANTES

1. **Key Hashes:** Você precisa adicionar DOIS hashes:
   - Um para debug/desenvolvimento
   - Um para release/produção

2. **Modo do App:** Se o app ainda estiver em modo "Desenvolvimento", apenas usuários adicionados como testadores/desenvolvedores/administradores poderão fazer login.

3. **Cache:** Sempre limpe o cache com `flutter clean` após mudanças de configuração.

4. **Tempo de Propagação:** Após fazer mudanças no Facebook Dashboard, pode levar alguns minutos para propagar.

---

## 🆘 SE AINDA NÃO FUNCIONAR

Se após todos os passos ainda houver erro:

1. Verifique os logs detalhados:
   ```bash
   # Android
   flutter run --verbose
   adb logcat | grep -i facebook
   
   # iOS
   flutter run --verbose
   ```

2. Verifique se o App ID está correto: `424112654916825`

3. Verifique se o Client Token está correto: `00e40b219f24ebf6c81ab4a3b77c2222`

4. Certifique-se de que o package name está correto:
   - Android: `com.newmanspirit.clarity`
   - iOS: `com.newmanspirit.clarity`

5. Tire um print do erro exato e compartilhe para análise mais detalhada.

