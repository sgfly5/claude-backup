---
name: github-login-setup
description: GitHub push auth for the backup repo is set up and working (token in macOS keychain)
metadata:
  type: project
---

As of 2026-10-19 auth works: a `repo`-scope token for `sgfly5` is stored in the macOS keychain (osxkeychain helper), and `git push` from ~/claude-backup succeeds (main pushed, commit afe717e). The user signs into GitHub via Google. The token was pasted in chat once, so they may rotate it: delete the old one at https://github.com/settings/tokens, run `git credential-osxkeychain erase`, push once with the new token.

**Why:** user doesn't want to repeat this setup. See [[github-backup]].
**How to apply:** no need to ask for login again; if a push fails with auth errors, the token was likely revoked or expired, so send them to the token URL https://github.com/settings/tokens/new?scopes=repo&description=claude-backup. Never ask for the token to be pasted in chat.
