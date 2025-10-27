# 🚀 EGSS — Bolt Fluxo Gratuito SVC

**Versão:** 1.2 • **Data:** 27/10/2025  
**Organização:** EG Smart Solutions • **Equipe:** EGSS Desenvolvimento

---

## 🎯 Objetivo

Este repositório documenta **todo o ciclo técnico e organizacional do Fluxo Gratuito EGSS**, desde o primeiro prompt no **Bolt.new** até o **deploy final na Vercel**.

> 💡 **Este ciclo explica o funcionamento completo do fluxo gratuito EGSS — do prompt inicial até a publicação em produção — garantindo padronização, governança e automação mínima.**

Ele é a base para que **qualquer membro da equipe ou parceiro** possa reproduzir o mesmo processo em novos projetos.

---

## 🧩 Estrutura do repositório

| Pasta | Função |
|-------|--------|
| `/prompts` | Prompts oficiais para uso no Bolt.new |
| `/docs` | Guias e tutoriais técnicos do fluxo |
| `/scripts` | Scripts de automação (proteção, verificação e deploy) |
| `/.github` | Workflows CI, templates e regras de governança |
| `.env.example` | Modelo de variáveis de ambiente |

---

## 🔁 Ciclo completo do Fluxo Gratuito EGSS

A seguir, o **passo a passo técnico e organizacional** do ciclo:

### 🟢 Etapa 1 — Criação via Bolt.new
- Use o prompt [`prompts/01-criacao-inicial.md`](prompts/01-criacao-inicial.md)  
- Nomeie o repositório seguindo o padrão:

  ```
  {produto}-{componente}[-tipo]-gratuito
  ```
  Exemplo: `portal-cliente-frontend-gratuito`

- Branch inicial: `main`
- Após o primeiro commit, configure **proteção da main** (PR obrigatória)

---

### 🔐 Etapa 2 — Proteção da branch principal
- Acesse **Settings → Branches → Add rule → `main`**
- Ative:
  - ✅ Require pull request before merging  
  - ✅ Require approval (autor ≠ aprovador)  
  - ✅ Require conversation resolution  
- *(Opcional se disponível)* Restrict who can push → apenas App do **Bolt** ou automação EGSS
- Alternativa via CLI:
  ```bash
  bash scripts/protect-main.sh EGSS-Desenvolvimento nome-do-repo
  ```

> Isso garante governança: ninguém faz commit direto em produção sem revisão.

---

### 🗃️ Etapa 3 — Configuração do Supabase (Gratuito)
- Crie o projeto no [Supabase](https://supabase.com/)
- Copie:
  - **Project URL**
  - **Anon Key**
- Preencha o arquivo `.env` com base em `.env.example`:
  ```env
  SUPABASE_URL=https://xxxx.supabase.co
  SUPABASE_ANON_KEY=eyJhbGciOiJI...
  SUPABASE_PROJECT_ID=xxxx
  SUPABASE_ENV=main
  ```
- Use o prompt [`prompts/02-supabase-gratuito.md`](prompts/02-supabase-gratuito.md) para gerar o setup automatizado no Bolt.

---

### 🌐 Etapa 4 — Deploy gratuito na Vercel (Hobby)
- Importe o repositório na [Vercel](https://vercel.com/)
- Configure:
  - **Production Branch:** `main`
  - Variáveis: `SUPABASE_URL` e `SUPABASE_ANON_KEY`
- Rode o primeiro deploy automático
- Use o prompt [`prompts/03-vercel-hobby.md`](prompts/03-vercel-hobby.md) se desejar gerar via Bolt.

---

### 🧭 Etapa 5 — Governança e Fluxo Organizacional
- Devs só fazem merge via **Pull Request**
- Autor não aprova a própria PR
- **CI** valida o repositório (`scripts/check-repo-naming.sh` e lint)
- Owners definidos em `.github/CODEOWNERS`
- **Workflows de CI** no `.github/workflows/ci.yml` impedem merges inválidos

Use o prompt [`prompts/04-governanca-github.md`](prompts/04-governanca-github.md) para aplicar as regras no Bolt.

---

### 🚀 Etapa 6 — Publicação e Validação Final
1. Confirme o checklist em [`docs/05-checklist-go-live.md`](docs/05-checklist-go-live.md)
2. Faça o merge da PR → CI → Deploy automático na Vercel
3. Valide:
   - URL pública ativa
   - Logs limpos
   - Integração Supabase funcional
4. Marque a entrega como concluída no quadro do projeto EGSS.

Prompt final: [`prompts/05-publicacao.md`](prompts/05-publicacao.md)

---

## 🧰 Scripts de suporte

| Script | Descrição |
|--------|------------|
| `scripts/protect-main.sh` | Cria proteção da branch `main` (via API GitHub) |
| `scripts/check-repo-naming.sh` | Valida se o nome termina com `-gratuito` |
| `scripts/print-next-steps.sh` | Exibe próximos passos após o CI |

Execute:
```bash
bash scripts/check-repo-naming.sh
```

---

## ⚙️ Integração CI/CD

- Workflow em `.github/workflows/ci.yml`:
  - Valida padrão de nome
  - Lint em arquivos `.md`
  - Exibe próximos passos pós-pipeline

O merge em `main` dispara automaticamente o deploy na Vercel.

---

## 📘 Documentação complementar

| Documento | Conteúdo |
|------------|-----------|
| [`docs/00-visao-geral.md`](docs/00-visao-geral.md) | Diagrama geral do fluxo |
| [`docs/01-setup-github.md`](docs/01-setup-github.md) | Proteção e regras da branch `main` |
| [`docs/02-setup-supabase.md`](docs/02-setup-supabase.md) | Configuração do Supabase gratuito |
| [`docs/03-setup-vercel.md`](docs/03-setup-vercel.md) | Deploy gratuito com Vercel |
| [`docs/04-governanca-e-regras.md`](docs/04-governanca-e-regras.md) | Padrões e responsabilidades |
| [`docs/05-checklist-go-live.md`](docs/05-checklist-go-live.md) | Validação final antes do deploy |

---

## 🧠 Entendimento técnico e organizacional

| Aspecto | Descrição |
|----------|------------|
| **Técnico** | Garantir integridade do código via PRs, CI e deploy automatizado |
| **Organizacional** | Seguir a hierarquia EGSS de criação, aprovação e publicação |
| **Automação** | Reduz dependência manual — scripts + Bolt cuidam do setup |
| **Governança** | A `main` é controlada e rastreável; cada merge tem revisão obrigatória |

---

## 💬 Suporte e manutenção

- Dúvidas e sugestões → Issues no GitHub  
- Revisões e merges → PRs com checklist preenchido  
- Owners padrão definidos em `.github/CODEOWNERS`  

---

## 🧾 Sobre

Serviço **EGSS** para documentação e suporte ao **Fluxo Gratuito** do Bolt, com padrões, scripts e automações integradas.  
Mantido por **EG Smart Solutions — EGSS Desenvolvimento**.
