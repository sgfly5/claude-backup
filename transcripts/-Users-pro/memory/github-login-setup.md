---
name: github-login-setup
description: "State of GitHub auth for the backup push; user logs into GitHub via Google, no credentials stored yet"
metadata:
  node_type: memory
  type: project
  originSessionId: 1f164113-2e59-4d23-848b-e278496be38d
  modified: 2026-10-19T04:44:16.230Z
---

As of 2026-10-19: `git push` from ~/claude-backup fails ("could not read Username") because the keychain (osxkeychain helper is set) has no GitHub credential, there are no SSH keys, and `gh` isn't installed. The user signs into GitHub through Google, so there's no GitHub password. Claude has no browser control here (Chrome extension not connected; Chrome's "Allow JavaScript from Apple Events" is off, and the user must enable it).

Fix path: user logs back in via Google, creates a `repo`-scope token at https://github.com/settings/tokens/new?scopes=repo&description=claude-backup, then runs `! cd ~/claude-backup && git push -u origin main` (username `sgfly5`, token as password) once; osxkeychain then remembers it and the Stop hook pushes automatically.

**Why:** user doesn't want to repeat this setup. See [[github-backup]].
**How to apply:** before asking again, run `git -C ~/claude-backup push` to see if auth already works. Never ask for the token in chat.
