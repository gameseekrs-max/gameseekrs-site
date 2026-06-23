# gameseekrs-site

Public **static hub** for **GameSeekrs** on [Solana Mobile Seeker](https://solanamobile.com/seeker): landing page and store-ready legal HTML for **Vault Runner**.

**GitHub org:** [gameseekrs-max](https://github.com/gameseekrs-max)

| URL | Role |
|-----|------|
| **`https://gameseekrs.com`** | Canonical custom domain (GitHub Pages + registrar DNS) |
| **`https://gameseekrs-max.github.io/gameseekrs-site/`** | GitHub Pages mirror (engineering only) |

**Apps, MWA identity, and dApp Store listings must use `https://gameseekrs.com` only.**

## Layout

| Path | Role |
|------|------|
| **`index.html`** | Brand hub — Vault Runner and links to legal pages |
| **`vault-runner/*.html`** | Privacy, terms, license for **Vault Runner** |
| **`legal.html`** | Legal index |
| **`copyright.html`** | Site-wide copyright |
| **`assets/hub-site.css`** | Landing layout and theme |
| **`assets/legal.css`** | Shared stylesheet for legal pages |

Policy text may also exist as markdown in the public **[Gameseekrs](https://github.com/gameseekrs-max/Gameseekrs)** repository; keep HTML here aligned when policies change.

## GitHub Pages

1. Repository [gameseekrs-max/gameseekrs-site](https://github.com/gameseekrs-max/gameseekrs-site) — push this tree to **`main`**.
2. **Settings → Pages:** Deploy from branch **`main`**, folder **`/ (root)`**.
3. **Custom domain:** **`gameseekrs.com`** — **`CNAME`** in repo root; registrar **A** records (`185.199.108–111.153`) on `@`, **Enforce HTTPS**.

Confirm: `https://gameseekrs.com/`, `…/vault-runner/terms.html`, `…/vault-runner/privacy.html` return **200**.

See **`GAMESEEKRS_COM_SITE.md`** for store compliance checklist.
