# gameseekrs-site

Public **static hub** for the **GameSeekrs** line (Solana Mobile Seeker): root landing page, per-app legal HTML, **GitHub Pages** / **Sol.site**. **Its own layout and CSS** — deploy target also **Firebase Hosting**, **IPFS**, **SNS**.

**GitHub org:** [gameseekrs-max](https://github.com/gameseekrs-max)

| URL (after setup) | Role |
|-------------------|------|
| **`https://gameseekrs-max.github.io/gameseekrs-site/`** | Default GitHub Pages (deploy from **`/`** root, branch **`main`**) |
| **`https://gameseekrs.sol.site`** | SNS + Sol.site — **only one** Pages/custom domain should own this hostname ([Sol.site DNS](https://docs.sns.id/collection/sns-v2/sol.site/website-configuration.md)) |

## Layout

| Path | Role |
|------|------|
| **`index.html`** | Brand hub — Vault Runner + GSkrs Flashlight cards + legal index |
| **`vault-runner/*.html`** | Privacy, terms, license for **Vault Runner** |
| **`flashlight/*.html`** | Privacy, terms, license for **GSkrs Flashlight** |
| **`assets/hub-site.css`** | Landing page layout and theme (distinct from generic teal/sage “app hub” patterns) |
| **`assets/legal.css`** | Shared stylesheet for legal pages + legal library |

**Agent / thread handoff:** This repo is **public** on GitHub — long continuation / thread handoffs **cannot** be included here (they **may** live only in **private** repos). Root **`CONTINUATION.md`** is **`.gitignore`d** on purpose. Use private **`gameseekrs-max/VaultRunner`** → **`docs/continuation.md`** (**§ *Continuation files — private repos only***).

**Hub copy:** GameSeekrs is **games and utilities** (arcade + flashlight + tools). Keep taglines and store blurbs in that lane; use **financial / legal / tax** wording only where wallet and on-chain features need it. See private **`gameseekrs-max/VaultRunner`** → **`docs/continuation.md`** (*GameSeekrs public hub voice*).

**Org GitHub visibility (`gameseekrs-max`):** Only **`gameseekrs-site`** (this repo) and **`Gameseekrs`** (Anchor + markdown policies) stay **public**. **`VaultRunner`**, **`GSkrsFlashlight`**, and other app repos remain **private** — do **not** change visibility without an explicit org decision; see **`gameseekrs-max/VaultRunner`** `docs/continuation.md` (section *gameseekrs-max org — GitHub visibility*).

**Authoritative markdown** for policy text still lives in **`gameseekrs-max/Gameseekrs`** (`PRIVACY.md`, `docs/*.md`). When those change, update the matching HTML here (or generate later).

## Relationship to Gameseekrs repo

The **Gameseekrs** repo (`seeker-rampage` locally) previously shipped legal HTML from **`docs/`** + GitHub Pages folder **`/docs`**. This repo **separates** the marketing/legal site from the Anchor program tree (standalone Pages repo for the line), with its **own** visual design.

- **Legacy URLs** like `…/Gameseekrs/legal/vault-privacy.html` keep working until you migrate app **`GAMESEEKRS_LEGAL_PAGES_BASE`** / store URLs to this site.
- See **`docs/MIGRATION_GAMESEEKRS_SITE.md`** in Gameseekrs (seeker-rampage) for checklist.

## GitHub Pages

1. **Repository** [gameseekrs-max/gameseekrs-site](https://github.com/gameseekrs-max/gameseekrs-site) — push this tree to **`main`** (see [Create repo and push](#create-repo-and-push) if the remote is empty).
2. **Settings → Pages:** Deploy from branch **`main`**, folder **`/ (root)`**.
3. **Custom domain (optional):** `gameseekrs.sol.site` — repo root **`CNAME`** is set for GitHub Pages. In **Settings → Pages → Custom domain**, add the hostname, wait for DNS check, **Enforce HTTPS**. Coordinate with SNS **Configure Sol.site** (CNAME to **`gameseekrs-max.github.io`**) or IPFS DNSLink per [Sol.site DNS](https://docs.sns.id/collection/sns-v2/sol.site/website-configuration.md). **Disable** or change Pages on **Gameseekrs** before the same hostname points here.

## Firebase / IPFS

- **`firebase.json`** — `firebase deploy --only hosting` (after `firebase use --add`).
- **`scripts/ipfs-stage-and-add.sh`** — local Kubo CID for sns.id **IPFS** record.

## Create repo and push

The **`gameseekrs-max/gameseekrs-site`** repo should exist (empty is fine). Clone or init locally, then:

```bash
cd /path/to/gameseekrs-site
git init   # skip if already a git repo
git add -A
git commit -m "Initial GameSeekrs public hub + legal HTML"
git branch -M main
git remote add origin https://github.com/gameseekrs-max/gameseekrs-site.git
git push -u origin main
```

### If push fails

| Symptom | What to do |
|--------|------------|
| **`Repository not found`** | Confirm the repo URL and that your GitHub user can **see** the repo (public or you’re a member). |
| **`Permission … denied to`** another GitHub user / **403** | Git is using credentials for an account **without Write** on **`gameseekrs-max/gameseekrs-site`**. Push as an org member with write access: **`gh auth login`** with that account, use a **PAT** from that account for HTTPS, or **`git remote set-url origin git@github.com:gameseekrs-max/gameseekrs-site.git`** with an SSH key for that user. Alternatively add the blocked account as a **collaborator** with **Write**. |
| **`cannot create a repository for gameseekrs-max`** (`gh repo create`) | Your user needs **org permission to create repos** — only an **owner** can grant that. |

*Review counsel before production store submissions.*
