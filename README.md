# EGSS — Bolt Fluxo Gratuito SVC

**Versão:** 1.1 • **Data:** 27/10/2025  
**Org:** EG Smart Solutions • **Equipe:** EGSS Desenvolvimento

---

## Objetivo

Centralizar **prompts oficiais** e **guias operacionais** para o **Fluxo Gratuito** no Bolt.new, garantindo:

- Padrão de nome `{produto}-{componente}[-tipo]-gratuito`
- Fluxo **single-branch** (`main`)
- Proteção da `main` com PRs para devs e (quando disponível) **Restrict who can push** apenas para o App do Bolt/automação
- Deploy opcional com **Supabase (Gratuito)** + **Vercel (Hobby)**

---

## Comece por aqui

1. **Crie o repo via Bolt.new** usando o prompt `prompts/01-criacao-inicial.md`  
2. **Proteja a `main`** pelo GitHub UI **OU** rode `scripts/protect-main.sh`  
3. **Crie seu projeto Supabase** e copie URL/Anon Key → preencha `.env`  
4. **Conecte o repo à Vercel (Hobby)** e aponte **Production** para a `main`  
5. **Publique** usando o prompt `prompts/05-publicacao.md`  

---

## Documentação

Veja os arquivos na pasta `/docs`

---

## Scripts úteis

- `scripts/protect-main.sh` → cria proteção da `main`
- `scripts/check-repo-naming.sh` → valida nome do repo
- `scripts/print-next-steps.sh` → imprime próximos passos

---

## Sobre

Serviço EGSS para documentação e suporte ao **Fluxo Gratuito** do Bolt.
