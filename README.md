# Home Assistant SOCKS5 Proxy Add-on

Home Assistant add-on that turns your HA host into a SOCKS5 proxy server.

## Installation

1. In Home Assistant go to **Settings > Add-ons > Add-on Store**
2. Click the menu (⋮) > **Repositories**
3. Add this URL:
   ```
   https://github.com/neoalarrode/ha-socks5-proxy
   ```
4. Find "SOCKS5 Proxy" in the store and install it.

## Features

- Full SOCKS5 protocol (RFC 1928)
- Username/password authentication (RFC 1929)
- IPv4, IPv6 and domain name support
- Configurable from the Home Assistant UI
- Supports all HA architectures (amd64, aarch64, armv7, armhf, i386)
- Logs to the add-on log panel and optionally to a file

## Configuration

| Option        | Default   | Description                              |
|---------------|-----------|------------------------------------------|
| `port`        | `1080`    | TCP port for the proxy                   |
| `username`    | *(empty)* | Auth username (leave empty = no auth)    |
| `password`    | *(empty)* | Auth password                            |
| `log_to_file` | `false`   | Also log to `/share/socks5-proxy.log`    |

## Standalone binaries

For Linux/Windows standalone binaries without Home Assistant, see
[socks5-proxy](https://github.com/neoalarrode/socks5-proxy).

## License

Proprietary. See [LICENSE](LICENSE).
