# SOCKS5 Proxy - Home Assistant Add-on

Turns your Home Assistant host into a SOCKS5 proxy server (RFC 1928) with
optional username/password authentication (RFC 1929).

## Installation

1. Add this repository to Home Assistant:
   **Settings > Add-ons > Add-on Store > ⋮ > Repositories**
2. Install "SOCKS5 Proxy" from the store.
3. Configure the options and start the add-on.

## Configuration

| Option        | Default | Description                                      |
|---------------|---------|--------------------------------------------------|
| `port`        | `1080`  | TCP port the proxy listens on.                   |
| `username`    | *(empty)* | Username for authentication. Leave empty to disable. |
| `password`    | *(empty)* | Password for authentication.                     |
| `log_to_file` | `false` | Also write logs to `/share/socks5-proxy.log`.    |

## Usage

Configure your client to use a SOCKS5 proxy pointing at your Home Assistant
host IP on the configured port.

### curl

```bash
curl --socks5 192.168.1.100:1080 http://example.com
```

### Firefox

Settings > Network Settings > Manual proxy > SOCKS Host: `192.168.1.100`,
Port: `1080`, SOCKS v5.

### SSH tunnel through the proxy

```bash
ssh -o ProxyCommand='nc -X 5 -x 192.168.1.100:1080 %h %p' user@remote
```

## Security

When authentication is disabled, anyone on the network who can reach the port
can route traffic through your Home Assistant host. Enable authentication or
restrict access at the firewall level.
