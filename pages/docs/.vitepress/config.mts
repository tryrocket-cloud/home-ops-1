import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Rocket Cloud",
  description: "Documentation",
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Examples', link: '/markdown-examples' }
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
