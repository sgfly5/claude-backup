---
name: github-backup
description: User wants all Claude work and instructions backed up to their GitHub repo sgfly5/claude-backup
metadata:
  node_type: memory
  type: user
  originSessionId: 9e622382-7384-4f5e-b0e7-3b655b020b0f
  modified: 2026-10-18T04:56:29.916Z
---

User's GitHub account is `sgfly5`; backup repo is https://github.com/sgfly5/claude-backup (private), local clone at ~/claude-backup.

`~/claude-backup/sync.sh` copies transcripts, CLAUDE.md and created files, commits and pushes. A Stop hook in ~/.claude/settings.json runs it after each turn.

**Why:** User wants to remember their instructions and keep everything they do on Claude saved to GitHub.
**How to apply:** Treat the user's instructions as durable. If asked about backups, check `git -C ~/claude-backup log` and whether the push works. Pushing needs the user's GitHub token (see [[keep-usage-low]]); never ask them to paste it into chat.
