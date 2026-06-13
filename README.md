# gameseekrs-site

Public **static hub** for **GameSeekrs** on [Solana Mobile Seeker](https://solanamobile.com/seeker): landing page and store-ready legal HTML (privacy, terms, license) for each app.

**Apps covered here**

- **Vault Runner** — on-chain arcade game for Seeker  
- **Seekr Beam** — torch, strobe, Clip & Pick, and optional MWA for Seeker

**GitHub org:** [gameseekrs-max](https://github.com/gameseekrs-max)

| URL | Role |
|-----|------|
| **`https://gameseekrs.com`** | Canonical custom domain (GitHub Pages + registrar DNS) |
| **`https://gameseekrs-max.github.io/gameseekrs-site/`** | GitHub Pages mirror (engineering only) |

**Apps, MWA identity, and dApp Store listings must use `https://gameseekrs.com` only** — not SNS/Sol.site aliases.

## Layout

| Path | Role |
|------|------|
| **`index.html`** | Brand hub — Vault Runner + Seekr Beam and links to legal pages |
| **`vault-runner/*.html`** | Privacy, terms, license for **Vault Runner** |
| **`seekr-beam/*.html`** | Privacy, terms, license for **Seekr Beam** |
| **`flashlight/*.html`** | Legacy redirects → **`seekr-beam/`** |
| **`assets/hub-site.css`** | Landing layout and theme |
| **`assets/legal.css`** | Shared stylesheet for legal pages |

Policy text may also exist as markdown in the public **[Gameseekrs](https://github.com/gameseekrs-max/Gameseekrs)** repository; keep HTML here aligned when policies change.

## GitHub Pages

1. Repository [gameseekrs-max/gameseekrs-site](https://github.com/gameseekrs-max/gameseekrs-site) — push this tree to **`main`**.
2. **Settings → Pages:** Deploy from branch **`main`**, folder **`/ (root)`**.
3. **Custom domain:** **`gameseekrs.com`** — root **`CNAME`** supports GitHub Pages. Registrar **A** records (`185.199.108–111.153`) on `@`, **CNAME** `www` → **`gameseekrs-max.github.io`**, wait for DNS check, **Enforce HTTPS**.
4. **Do not** put SNS/Sol.site hostnames in app code or store portal fields — **`.com`** is the only public URL for reviewers and users.

**Repo `CNAME`:** `gameseekrs.com`

Confirm in a browser: `https://gameseekrs.com/`, `…/vault-runner/privacy.html`, `…/seekr-beam/privacy.html` return **200**.

Hosting is **Git only** (GitHub Pages + custom domain).

*Review counsel before production store submissions.*
