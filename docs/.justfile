list:
  @just --list

# start a local dev server
dev:
  @npm run docs:dev

# build docs
build:
  @npm run docs:build

# run static site
preview:
  @npm run docs:preview
