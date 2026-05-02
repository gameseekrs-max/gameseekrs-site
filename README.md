# gameseekrs-site

Public **static hub** for the **GameSeekrs** line (Solana Mobile Seeker) — same idea as **OptimaSanitas/optimasanitas-site**: root landing page, per-app legal HTML, ready for **GitHub Pages**, **Firebase Hosting**, **IPFS**, and **SNS / Sol.site**.

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
| **`assets/legal.css`** | Shared stylesheet for legal pages |

**Authoritative markdown** for policy text still lives in **`gameseekrs-max/Gameseekrs`** (`PRIVACY.md`, `docs/*.md`). When those change, update the matching HTML here (or generate later).

## Relationship to Gameseekrs repo

The **Gameseekrs** repo (`seeker-rampage` locally) previously shipped legal HTML from **`docs/`** + GitHub Pages folder **`/docs`**. This repo **separates** the marketing/legal site from the Anchor program tree — mirror **optimasanitas-site** vs **lev-anchor**.

- **Legacy URLs** like `…/Gameseekrs/legal/vault-privacy.html` keep working until you migrate app **`GAMESEEKRS_LEGAL_PAGES_BASE`** / store URLs to this site.
- See **`docs/MIGRATION_GAMESEEKRS_SITE.md`** in Gameseekrs (seeker-rampage) for checklist.

## GitHub Pages

1. Create **`gameseekrs-max/gameseekrs-site`** (empty), push this tree.
2. **Settings → Pages:** Deploy from branch **`main`**, folder **`/ (root)`**.
3. Optional **Custom domain:** `gameseekrs.sol.site` — coordinate with SNS **Configure Sol.site** (CNAME to **`gameseekrs-max.github.io`** or IPFS DNSLink per SNS docs). **Disable** or change Pages on **Gameseekrs** before pointing the same hostname here.

## Firebase / IPFS

- **`firebase.json`** — `firebase deploy --only hosting` (after `firebase use --add`).
- **`scripts/ipfs-stage-and-add.sh`** — local Kubo CID for sns.id **IPFS** record.

## Create repo and push

```bash
cd /path/to/gameseekrs-site
git init
git add -A
git commit -m "Initial GameSeekrs public hub + legal HTML"
git branch -M main
git remote add origin https://github.com/gameseekrs-max/gameseekrs-site.git
git push -u origin main
```

*Review counsel before production store submissions.*
