---
name: gmail-access-setup
description: Plan for Gmail tasks without re-login: Claude in Chrome with a persistent Google session, plus a Gmail app password in the macOS keychain
metadata:
  type: project
---

As of 2026-10-19 the user chose (1) Claude in Chrome so Gmail tasks use their already-signed-in Chrome, and (3) originally a Google app password, but Google returned "setting not available for your account" on 2026-10-19, so this switched to the Gmail connector in claude.ai (Settings > Connectors). Status: user was sent to https://claude.ai/chrome (extension install) and https://myaccount.google.com/apppasswords (needs 2-step verification on); not yet confirmed done.

**Why:** user doesn't want to log into Gmail for each task. See [[chrome-extension-open-sites]].
**How to apply:** for Gmail tasks, try Chrome tools first; if unavailable, tell the user to run `/chrome`. For terminal use, read the app password from the keychain (`security find-generic-password -s claude-gmail -w`); never store it in files, memory or the GitHub backup, and never ask for it in chat. Stop and ask on 2FA prompts.
