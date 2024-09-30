---
outline: deep
---

# Homer

https://docs.tryrocket.cloud

Homer dashboard is running on Cloudflare pages.


## Setup with Git Subtree

```sh
# home-op/
git remote add -f homer https://github.com/bastienwirtz/homer.git
git subtree add --prefix=pages/homer homer main --squash
```

## Update

```sh
git subtree pull --prefix=pages/homer homer main --squash
```

