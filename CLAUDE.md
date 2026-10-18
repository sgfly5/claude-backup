# Keep usage low

The user is on a Claude subscription and wants each request to use as little of their usage limit as possible.

## Topic changes
- If a new request is unrelated to what this conversation has been about, say so in one line at the start of the reply and suggest `/clear` before continuing (long unrelated history gets resent with every message). Then handle the request anyway.
- If the conversation is long but still on topic, suggest `/compact` once rather than `/clear`.

## Match the effort to the task
- Simple questions, lookups, one-line fixes: answer directly and briefly. No extra exploration, no subagents.
- Broad searches across many files where only the conclusion matters: delegate to an Explore agent with `model: "haiku"`.
- Hard tasks (tricky bugs, large refactors, architecture) where the current model is struggling: suggest the user run `/model opus` for that task, and `/model sonnet` afterwards.
- Don't re-read files already in context, don't run checks that aren't needed, and keep replies short.
