---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Rocket Cloud"
  text: "Documentation"
  tagline: My home Kubernetes cluster managed by GitOps, Renovate and GitHub Actions
  # image:
  #   src: /pic3.webp
  #   alt: VitePress
  actions:
    - theme: brand
      text: Getting Started
      link: /getting-started
    - theme: alt
      text: Applications
      link: /applications
    - theme: alt
      text: GitHub
      link: https://github.com/tryrocket-cloud

features:
  - icon:
      src: https://www.talos.dev/images/logo.svg
    title: Talos
    details: The Kubernetes Operating System
  - icon:
      src: https://cdn.jsdelivr.net/gh/selfhst/icons/webp/argo-cd.webp
    title: ArgoCD
    details: Declarative GitOps CD for Kubernetes
  - icon:
      src: ./assets/renovate.png
    title: Renovate
    details: Automated dependency updates. Multi-platform and multi-language.
  - icon:
      src: https://cdn.jsdelivr.net/gh/selfhst/icons/webp/hashicorp-vault-light.webp
    title: HashiCorp Vault
    details: Manage secrets and protect sensitive data
    # - icon:
    #     src: https://cdn.jsdelivr.net/gh/selfhst/icons/webp/github.webp
    #   title: GitHub
    #   details: The complete developer platform to build, scale, and deliver secure software.

