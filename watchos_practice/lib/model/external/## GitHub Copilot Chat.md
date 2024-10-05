## GitHub Copilot Chat

- Extension Version: 0.21.0 (prod)
- VS Code: vscode/1.94.0
- OS: Mac

## Network

User Settings:
```json
  "github.copilot.advanced": {
    "debug.useElectronFetcher": true,
    "debug.useNodeFetcher": false
  }
```

Connecting to https://api.github.com:
- DNS ipv4 Lookup: 20.27.177.116 (37 ms)
- DNS ipv6 Lookup: ::ffff:20.27.177.116 (6 ms)
- Electron Fetcher (configured): HTTP 200 (359 ms)
- Node Fetcher: HTTP 200 (94 ms)
- Helix Fetcher: HTTP 200 (340 ms)

Connecting to https://api.githubcopilot.com/_ping:
- DNS ipv4 Lookup: 140.82.114.21 (29 ms)
- DNS ipv6 Lookup: ::ffff:140.82.114.21 (1 ms)
- Electron Fetcher (configured): HTTP 200 (644 ms)
- Node Fetcher: HTTP 200 (539 ms)
- Helix Fetcher: HTTP 200 (584 ms)

## Documentation

In corporate networks: [Troubleshooting firewall settings for GitHub Copilot](https://docs.github.com/en/copilot/troubleshooting-github-copilot/troubleshooting-firewall-settings-for-github-copilot).