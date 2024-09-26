list:
  @just --list

release version:
  @git commit --allow-empty -m "chore: release {{version}}" -m "Release-As: {{version}}"
