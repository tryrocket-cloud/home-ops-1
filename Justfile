mod docs
mod github '.github/'
mod iac
mod k8s

list:
  @just --list

# hello
[confirm: "Are you sure you want to run this task?"]
hello:
  @echo hello

tree:
  @tree -I 'node_modules|dist|.git'
