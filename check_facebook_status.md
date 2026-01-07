# 🔍 Diagnóstico: Status do Facebook App - Clarity

## 🚨 SITUAÇÃO ATUAL

Você está vendo:
- ❌ Banner vermelho: "API access restricted"
- ❌ Ao clicar em "Ver ações necessárias": Link inválido
- ❌ Sugestão para procurar: "apps 424112654916825 violations and appeals"

**Isso significa:** Seu app tem **VIOLAÇÕES DE POLÍTICAS** ativas.

---

## 📋 CHECKLIST DE DIAGNÓSTICO

Siga esta lista e marque o que você encontrar:

### 1. Status do App

Acesse: https://developers.facebook.com/apps/424112654916825/settings/basic/

No topo da página, qual é o status do app?
- [ ] 🟢 Publicado (Live)
- [ ] 🟡 Desenvolvimento (Development)
- [ ] 🔴 Restrito (Restricted)
- [ ] ⚠️ Outro: _________________

---

### 2. Caixa de Entrada de Alertas

Acesse: https://developers.facebook.com/apps/424112654916825/

No menu lateral esquerdo, clique no **ícone de sino 🔔** (Caixa de Entrada de alertas)

Há alguma mensagem? Se sim, qual?
- [ ] ⚠️ "Obsolescência da versão" (Graph API v18.0)
- [ ] 🔴 "Urgent: Data Use Checkup Recertification Required"
- [ ] 🔴 "Important: Data Use Checkup recertification required"
- [ ] 🔴 "API access restricted"
- [ ] 🔴 Violação de políticas
- [ ] ✅ Nenhuma mensagem
- [ ] Outra: _________________

---

### 3. Configurações Básicas

Acesse: https://developers.facebook.com/apps/424112654916825/settings/basic/

Verifique se TODOS estão preenchidos:

**Informações do App:**
- [ ] Nome de exibição: Clarity
- [ ] Namespace: (pode estar vazio)
- [ ] Email de contato: marco@newmantraining.it ✅
- [ ] Categoria: Estilo de vida ✅

**URLs:**
- [ ] URL da Política de Privacidade: https://clarityapp.it/clarity-privacy-policy/ ✅
- [ ] URL dos Termos de Serviço: _________________ (está preenchido?)

**Domínios:**
- [ ] Domínios do aplicativo: clarityapp.it (está adicionado?)

**Ícone:**
- [ ] Ícone do aplicativo (1024 x 1024): ✅ (vejo no print)

---

### 4. Configurações Avançadas

Acesse: https://developers.facebook.com/apps/424112654916825/settings/advanced/

**Exclusão de dados do usuário:**
- [ ] URL de instruções de exclusão de dados: _________________ (está preenchido?)

**Autenticação do aplicativo:**
- [ ] Autorizar URL de retorno de chamada: _________________ (está preenchido?)

**Atualizar a versão da API:**
- [ ] Atualizar todas as chamadas: v19.0 ✅ (você já fez)
- [ ] Upgrade calls for app roles: v19.0 ✅ (você já fez)

**Baixar identificadores de usuário:**
- [ ] Está configurado? _________________

---

### 5. Casos de Uso (Use Cases)

Acesse: https://developers.facebook.com/apps/424112654916825/use_cases/

Procure por **"Autenticação e solicitação de dados"** ou **"Authentication and data access"**

- [ ] Facebook Login está listado?
- [ ] Status: Ativo ou Inativo?
- [ ] Permissões solicitadas: public_profile, email?

---

### 6. Seção Android

Acesse: https://developers.facebook.com/apps/424112654916825/settings/basic/

Role até a seção **Android**:

**Informações:**
- [ ] Nomes do pacote: com.newmanspirit.clarity ✅
- [ ] Class name: com.newmanspirit.clarity.MainActivity ✅
- [ ] Chave para descriptografar o referenciador de instalação: ✅

**Hashes chave:**
Quantos hashes estão listados? _________________

Os seguintes hashes estão na lista?
- [ ] DbN9yZPoDwT/SykSmrbuiBgxUS8= (debug)
- [ ] gzZlmH/aIm93ozmyG92g7mM9DDQ= (release)

---

### 7. Seção iOS

Acesse: https://developers.facebook.com/apps/424112654916825/settings/basic/

Role até a seção **iOS**:

**Informações:**
- [ ] ID do pacote: com.newmanspirit.clarity ✅
- [ ] ID da iPhone Store: 1490242088 ✅

**SDK:**
- [ ] Versão mostrada: _________________ (v17.0.3 ou v18.0.2?)

---

### 8. Qualidade do App (App Quality)

Tente acessar: https://developers.facebook.com/apps/424112654916825/app-events/

- [ ] Esta página existe?
- [ ] Há alertas ou avisos?
- [ ] Qual é a mensagem? _________________

---

### 9. Verificação de SDK

Acesse: https://developers.facebook.com/apps/424112654916825/settings/advanced/

Role até **"Verifique a versão do seu SDK"**

**iOS:**
- [ ] Versão atual: v17.0.3 ⚠️ (precisa atualizar)
- [ ] Versão mais recente: 18.0.2
- [ ] Botão "Atualizar" aparece?

**Android:**
- [ ] Versão atual: v18.1.3 ✅
- [ ] Status: Atualizado

---

## 🎯 AÇÕES BASEADAS NO DIAGNÓSTICO

### Se o app está em "Modo de Desenvolvimento":

**Solução temporária:**
1. Adicione usuários como testadores
2. Eles poderão fazer login mesmo com restrições

**Solução definitiva:**
1. Complete todas as verificações
2. Publique o app (mude para "Modo publicado")

---

### Se falta URL de Termos de Serviço:

1. Crie uma página de termos em: https://clarityapp.it/terms-of-service/
2. Adicione no campo "URL dos Termos de Serviço"
3. Salve as alterações

---

### Se falta URL de Exclusão de Dados:

1. Crie uma página de exclusão em: https://clarityapp.it/data-deletion/
2. Ou use o mesmo link da política de privacidade
3. Adicione no campo "URL de instruções de exclusão de dados"
4. Salve as alterações

---

### Se Data Use Checkup não foi completado:

1. Vá na Caixa de Entrada de alertas (sino 🔔)
2. Procure por "Data Use Checkup"
3. Complete o questionário
4. Envie a certificação

---

### Se há violações específicas:

1. Leia a mensagem de violação
2. Siga as instruções para corrigir
3. Se não concordar, faça um appeal
4. Aguarde revisão do Facebook (3-7 dias)

---

## 📸 TIRE PRINTS

Para análise mais detalhada, tire prints de:

1. **Tela inicial do dashboard** (com o banner vermelho)
2. **Configurações → Básico** (página inteira)
3. **Configurações → Avançado** (página inteira)
4. **Caixa de Entrada de alertas** (todas as mensagens)
5. **Casos de uso** (se existir)
6. **Qualidade do app** (se existir)

---

## 🔗 LINKS DIRETOS ÚTEIS

```
Dashboard principal:
https://developers.facebook.com/apps/424112654916825/

Configurações básicas:
https://developers.facebook.com/apps/424112654916825/settings/basic/

Configurações avançadas:
https://developers.facebook.com/apps/424112654916825/settings/advanced/

Facebook Login:
https://developers.facebook.com/apps/424112654916825/fb-login/settings/

Casos de uso:
https://developers.facebook.com/apps/424112654916825/use_cases/

Alertas:
https://developers.facebook.com/apps/424112654916825/alerts/

Suporte:
https://developers.facebook.com/support/
```

---

## ✅ PRÓXIMO PASSO

1. **Preencha este checklist** marcando o que você encontra
2. **Tire prints** das seções mencionadas
3. **Compartilhe** para análise detalhada
4. **Identifique** qual é a violação específica

---

**Importante:** O problema NÃO é técnico (código/key hash). É uma questão de **políticas e configurações** no Facebook Dashboard que precisa ser resolvida.

