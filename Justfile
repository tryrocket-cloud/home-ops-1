mod iac
mod k8s
mod github '.github/'

list:
  @just --list

# hello
[confirm: "Are you sure you want to run this task?"]
hello:
  @echo hello

