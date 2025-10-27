# 🚀 Ciclo Completo — Fluxo GRATUITO EGSS

(Conteúdo idêntico ao README, seção "Ciclo Completo", para consulta isolada.)

---

## 🧭 1️⃣ Inicialização no Bolt.new

* Inicie o projeto no Bolt.new e cole o **Prompt 1**.
* O repositório é criado no GitHub com nome `{produto}-{componente}[-tipo]-gratuito`.
* Branch padrão: `main`.

---

## 🧱 2️⃣ Proteção da Branch `main`

* Ative Branch Protection exigindo PR para devs.
* Bloqueie auto-aprovação (autor não aprova).
* Apenas o Bolt pode commitar diretamente (se sua conta permitir restrição por app).

  * Caso não: todo mundo, inclusive Bolt, usa PR.

---

## 🧠 3️⃣ Integração Supabase (Gratuito)

* Conecte um único projeto Supabase.
* Configure `SUPABASE_*` no repositório (ou na Vercel).
* `main` publica nesse único backend.

---

## 🌐 4️⃣ Deploy Vercel (Hobby)

* Conecte o repo na Vercel.
* Configure deploy automático da `main`.
* Configure as variáveis `SUPABASE_*`.

---

## 🔐 5️⃣ Governança de PRs (para devs)

* Devs só alteram via PR.
* Autor não pode aprovar.
* Merge após revisão e checks.

---

## 🚀 6️⃣ Publicação

* Bolt faz commit direto na `main` (quando permitido) **ou** abre PR com auto-merge.
* Vercel publica.
* Supabase já está apontado.
