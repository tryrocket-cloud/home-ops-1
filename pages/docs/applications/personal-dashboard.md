## Personal Dashboard

Personal Dashboard ([Homer](https://github.com/bastienwirtz/homer)) hosted at [tryrocket.cloud](https://tryrocket.cloud) and provides a customizable homepage for organizing and accessing frequently used services and websites.

[config.yml](../homer/public/assets/config.yml)

The source code can be found at `pages/homer/`

### Setup with Git Subtree

```sh
# home-op/
git remote add -f homer https://github.com/bastienwirtz/homer.git
git subtree add --prefix=pages/homer homer main --squash
```

### Update

```sh
git subtree pull --prefix=pages/homer homer main --squash
```
