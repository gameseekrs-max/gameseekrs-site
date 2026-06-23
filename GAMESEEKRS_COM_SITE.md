# GameSeekrs public site — **`gameseekrs.com`**

**Product line:** GameSeekrs (**gameseekrs-max**). Public hub lists **Vault Runner** only.

## URLs (canonical)

| Purpose | Value |
|---------|--------|
| **HTTPS (MWA `identity.uri`, store “website”, in-app legal)** | **`https://gameseekrs.com`** |
| **GitHub Pages source** | **[gameseekrs-max/gameseekrs-site](https://github.com/gameseekrs-max/gameseekrs-site)** |
| **`CNAME`** | **`gameseekrs.com`** |
| **Mirror (engineering fallback)** | `https://gameseekrs-max.github.io/gameseekrs-site/` |
| **Vault Runner compliance paths** | `/vault-runner/terms.html`, `/vault-runner/privacy.html` |
| **Vault Runner code** | `GAMESEEKRS_PUBLIC_SITE`, `GAMESEEKRS_MWA_IDENTITY_URI`, `PRIVACY_POLICY_URL`, `VAULT_RUNNER_TERMS_URL` in `VaultRunner/src/config/publicLinks.ts` |

## Store portal (Vault Runner)

| Field | Value |
|-------|--------|
| **App website** | `https://gameseekrs.com/` |
| **Terms** | `https://gameseekrs.com/vault-runner/terms.html` |
| **Privacy** | `https://gameseekrs.com/vault-runner/privacy.html` |
| **Do not submit** | `license.html`, `eula.html` |

## Wiring checklist

1. Push **`gameseekrs-site`** to **`main`**.
2. **`CNAME`** = **`gameseekrs.com`**; DNS + **Enforce HTTPS**.
3. Confirm Vault Runner legal URLs return **200** before store submission.
4. Apps and HTML must **not** reference **`gameseekrs.sol.site`** in live/store fields.
