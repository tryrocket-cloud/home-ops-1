import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Rocket Cloud",
  description: "Documentation",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Getting started', link: '/getting-started' }
    ],

    sidebar: [
      {
        text: 'How it works',
        items: [
          { text: 'Concepts', link: '/how-it-works' },
        ]
      },
      {
        text: 'Getting started',
        items: [
        ]
      },
      {
        text: 'Development',
        items: [
          { text: 'Principles & Guidelines', link: '/principles-and-guidelines' },
        ]
      },
      {
        text: 'Applicaitons & Services',
        items: [
          { text: 'Docs (vitepress)', link: '/apps/docs' },
          { text: 'Homer', link: '/apps/homer' },
          { text: 'Status (upptime)', link: '/apps/status' },
          { text: 'Vault', link: '/apps/vault' },
          { text: 'Vaultwarden', link: '/apps/vaultwarden' },
        ]
      },
      {
        text: 'Examples',
        items: [
          { text: 'Markdown Examples', link: '/markdown-examples' },
          { text: 'Runtime API Examples', link: '/api-examples' }
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/tryrocket-cloud/home-ops' }
    ]
  }
})
