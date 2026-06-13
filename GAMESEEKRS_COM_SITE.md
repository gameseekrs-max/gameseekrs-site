# GameSeekrs public site — **`gameseekrs.com`**

**Product line:** GameSeekrs (**gameseekrs-max**). Not OptimaSanitas.

## URLs (canonical)

| Purpose | Value |
|---------|--------|
| **HTTPS (MWA `identity.uri`, store “website”, in-app legal)** | **`https://gameseekrs.com`** |
| **GitHub Pages source** | **[gameseekrs-max/gameseekrs-site](https://github.com/gameseekrs-max/gameseekrs-site)** |
| **`CNAME`** | **`gameseekrs.com`** |
| **Mirror (engineering fallback)** | `https://gameseekrs-max.github.io/gameseekrs-site/` |
| **Vault Runner compliance paths** | `/vault-runner/terms.html`, `/vault-runner/privacy.html` |
| **Seekr Beam compliance paths** | `/seekr-beam/terms.html`, `/seekr-beam/privacy.html` |
| **Vault Runner code** | `GAMESEEKRS_PUBLIC_SITE`, `GAMESEEKRS_MWA_IDENTITY_URI`, `PRIVACY_POLICY_URL`, `VAULT_RUNNER_TERMS_URL` in `VaultRunner/src/config/publicLinks.ts` |
| **Seekr Beam code** | Same base + `SEEKR_BEAM_*` in `GSkrsFlashlight/src/config/publicLinks.ts` |

## Optional alias (do not use in apps or store portals)

| Purpose | Value |
|---------|--------|
| **SNS name** | `gameseekrs.sol` |
| **Sol.site HTTPS** | `https://gameseekrs.sol.site` (legacy; **not** canonical in APK or listings) |
| **Legacy utility path** | `/flashlight/*.html` → redirects to `/seekr-beam/*.html` |

## Wiring checklist

1. **`gameseekrs-site`** on GitHub Pages (branch **`main`**, root).
2. **`CNAME`** file = **`gameseekrs.com`**; registrar **A** records → GitHub Pages IPs; **Enforce HTTPS**.
3. Confirm **`https://gameseekrs.com/vault-runner/terms.html`** and **`…/seekr-beam/terms.html`** return **200** before store submission.
4. Bump app **`publicLinks.ts`** only if host changes — today both point at **`.com`**.

## Store portal (manual, per app)

| Field | Vault Runner | Seekr Beam |
|-------|--------------|------------|
| **App website** | `https://gameseekrs.com/` | same |
| **Terms** | `…/vault-runner/terms.html` | `…/seekr-beam/terms.html` |
| **Privacy** | `…/vault-runner/privacy.html` | `…/seekr-beam/privacy.html` |
| **Do not submit** | `license.html`, `eula.html` | same |
