import { defineConfig } from 'vitepress'
import { withMermaid } from "vitepress-plugin-mermaid";

// https://vitepress.dev/reference/site-config

export default withMermaid(
  defineConfig({
    title: "Rocket Cloud",
    description: "Documentation",
    themeConfig: {
      search: {
        provider: 'local'
      },
      editLink: {
        pattern: 'https://github.com/tryrocket-cloud/home-ops/edit/main/pages/docs/:path'
      },
      // https://vitepress.dev/reference/default-theme-config
      nav: [
        { text: 'Home', link: '/' },
        { text: 'Getting started', link: '/getting-started' },
        { text: 'Applications', link: '/applications' }
      ],

      sidebar: [
        {
          text: 'Overview',
          items: [
            { text: 'Introduction', link: '/overview/introduction' },
            { text: 'Architecture', link: '/overview/architecture' },
          ]
        },
        {
          text: 'Hardware',
          items: [
            { text: 'Servers and Equipment', link: '/hardware/servers-equipment' },
            { text: 'Rack Organization', link: '/hardware/rack-organization' },
            { text: 'IoT Devices', link: '/hardware/iot-devices' },
          ]
        },
        {
          text: 'Network',
          items: [
            { text: 'Network Design', link: '/network/introduction' },
            { text: 'Router and Firewall', link: '/network/introduction' },
            { text: 'DNS and DHCP', link: '/network/introduction' },
          ]
        },
        {
          text: 'Compute, Containerization, and Storage Infrastructure',
          items: [
            { text: 'Hypervisors', link: '/hypervisors' },
            { text: 'Containerization', link: '/containerization' },
            {
              text: 'Hyperconverged Infrastructure (HCI)', link: '/hci',
              items: [
                { text: 'Network Attached Storage (NAS)', link: '/introduction' },
                { text: 'Storage Pools', link: '/introduction' },
                { text: 'Backups and Snapshots', link: '/introduction' },
              ]
            },
          ]
        },
        {
          text: 'Services and Applications',
          items: [
            { text: 'Applications', link: '/applications' },
            { text: 'Backup Solutions', link: '/introduction' },
          ]
        },
        {
          text: 'Security and Authentication',
          items: [
            { text: 'Security Layers', link: '/security-layers' },
            { text: 'Network Security', link: '/introduction' },
            { text: 'User Management and Authentication', link: '/introduction' },
            { text: 'Certificate Management', link: '/introduction' },
          ]
        },
        {
          text: 'Infrastructure Automation and Orchestration', link: '/infrastructure-automation-orchestration'
        },
        {
          text: 'Maintenance and Troubleshooting',
          items: [
            { text: 'Monitoring and Logging', link: '/introduction' },
            { text: 'Alerting', link: '/introduction' },
            { text: 'Regular Maintenance', link: '/introduction' },
            { text: 'Troubleshooting Common Issues', link: '/introduction' },
            { text: 'Disaster Recovery Plan', link: '/introduction' },
            { text: 'Dependency Management', link: '/dependancy-management' },

          ]
        },
        {
          text: 'External Services', link: '/external-services'
        },
        {
          text: 'References and Resources',
          items: [
            { text: 'Archive', link: '/archive' },
          ]
        },
        {
          text: 'Future Plans and Improvements',
          items: [
            { text: 'Regular Maintenance', link: '/introduction' },
            { text: 'Troubleshooting Common Issues', link: '/introduction' },
            { text: 'Disaster Recovery Plan', link: '/introduction' },

          ]
        },
        {
          text: 'Development',
          items: [
            { text: 'Principles & Guidelines', link: '/principles-and-guidelines' },
          ]
        },
        {
          text: 'Components',
          items: [
            { text: 'Docs (vitepress)', link: '/apps/docs' },
            { text: 'Homer', link: '/apps/homer' },
            { text: 'Status (upptime)', link: '/apps/status' },
            { text: 'Vault', link: '/apps/vault' },
            { text: 'Vaultwarden', link: '/apps/vaultwarden' },
          ]
        },
      ],

      socialLinks: [
        { icon: 'github', link: 'https://github.com/tryrocket-cloud/home-ops' }
      ]
    }
  })
)
