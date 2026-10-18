#!/bin/zsh
# Copies Claude transcripts, global instructions and created files into this repo, then commits and pushes.
cd "$(dirname "$0")" || exit 1
mkdir -p transcripts files
rsync -a --delete ~/.claude/projects/ transcripts/
cp ~/.claude/CLAUDE.md . 2>/dev/null
rsync -a /private/tmp/claude-501/ files/ 2>/dev/null
grep -rlE 'github_pat_|ghp_' transcripts files 2>/dev/null | xargs sed -i '' -E 's/(github_pat_|ghp_)[A-Za-z0-9_]+/[REDACTED-TOKEN]/g'
git add -A
git commit -qm "Backup $(date '+%Y-%m-%d %H:%M')" || echo "Nothing new to commit"
git remote get-url origin >/dev/null 2>&1 && git push -q -u origin main
