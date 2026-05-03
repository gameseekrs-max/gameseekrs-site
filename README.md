# gameseekrs-site

Public **static hub** for **GameSeekrs** on [Solana Mobile Seeker](https://solanamobile.com/seeker): landing page and store-ready legal HTML (privacy, terms, license) for each app.

**Apps covered here**

- **Vault Runner** — on-chain arcade game for Seeker  
- **GSkrs Flashlight** — Seeker flashlight, camera clip, and Solana wallet utilities

**GitHub org:** [gameseekrs-max](https://github.com/gameseekrs-max)

| URL (after setup) | Role |
|-------------------|------|
| **`https://gameseekrs-max.github.io/gameseekrs-site/`** | Default GitHub Pages (deploy from **`/`** root, branch **`main`**) |
| **`https://gameseekrs.sol.site`** | SNS + Sol.site — one Pages or custom domain should own this hostname ([Sol.site DNS](https://docs.sns.id/collection/sns-v2/sol.site/website-configuration.md)) |

## Layout

| Path | Role |
|------|------|
| **`index.html`** | Brand hub — Vault Runner + GSkrs Flashlight and links to legal pages |
| **`vault-runner/*.html`** | Privacy, terms, license for **Vault Runner** |
| **`flashlight/*.html`** | Privacy, terms, license for **GSkrs Flashlight** |
| **`assets/hub-site.css`** | Landing layout and theme |
| **`assets/legal.css`** | Shared stylesheet for legal pages |

Policy text may also exist as markdown in the public **[Gameseekrs](https://github.com/gameseekrs-max/Gameseekrs)** repository; keep HTML here aligned when policies change.

## GitHub Pages

1. Repository [gameseekrs-max/gameseekrs-site](https://github.com/gameseekrs-max/gameseekrs-site) — push this tree to **`main`**.
2. **Settings → Pages:** Deploy from branch **`main`**, folder **`/ (root)`**.
3. **Custom domain:** `gameseekrs.sol.site` — root **`CNAME`** supports GitHub Pages. In **Settings → Pages → Custom domain**, add the hostname, wait for DNS check, **Enforce HTTPS**. In **sns.id**, **Configure Sol.site** with CNAME to **`gameseekrs-max.github.io`** ([Sol.site DNS](https://docs.sns.id/collection/sns-v2/sol.site/website-configuration.md)). Only one site should publish the same hostname.

Hosting is **Git only** (GitHub Pages + Sol.site).

## First-time clone and push

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
| **`Repository not found`** | Confirm the repo URL and that your GitHub user can **see** the repo. |
| **`Permission … denied`** / **403** | Use credentials for an account with **Write** on **`gameseekrs-max/gameseekrs-site`**, or SSH: **`git remote set-url origin git@github.com:gameseekrs-max/gameseekrs-site.git`**. |
| **`cannot create … gameseekrs-max`** | Creating the repo may require an **org owner** to grant permission. |

*Review counsel before production store submissions.*
