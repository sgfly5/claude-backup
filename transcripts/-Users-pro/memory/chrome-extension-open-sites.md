---
name: chrome-extension-open-sites
description: User has the Claude in Chrome extension; open sites that need their action instead of giving click-by-click steps
metadata:
  node_type: memory
  type: feedback
  originSessionId: 9e622382-7384-4f5e-b0e7-3b655b020b0f
  modified: 2026-10-18T05:16:06.789Z
---

The user has the Claude in Chrome extension installed. When a task needs them to act on a website (log in, change a setting, create a token), open the page for them in Chrome and do what's possible there, rather than only listing steps.

**Why:** User said "you have claude on chrome extension now, so in the future just pull up sites i need to take action on. remember that always". They struggled with terminal steps while setting up [[github-backup]].
**How to apply:** Load the anthropic-skills:chrome-browser skill, then use the mcp__claude-in-chrome__* tools. Stop and hand over to the user for passwords, Google sign-in and confirmations. Never ask them to paste secrets into chat.

User is already signed in to their Google account in Chrome and authorized using that signed-in session in the browser to complete tasks (e.g. GitHub via Google sign-in). Still stop and ask before payments, deleting things, or anything beyond the task asked.
