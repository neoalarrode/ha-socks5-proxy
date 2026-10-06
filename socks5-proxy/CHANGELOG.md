# Changelog

## 1.0.2

- Fix: bypass s6-overlay entirely to avoid suexec PID 1 errors
- Run proxy binary directly as container entrypoint
- Read config with jq instead of bashio for maximum compatibility

## 1.0.1

- Fix: use s6-overlay v3 service directory structure

## 1.0.0

- Initial release
- SOCKS5 CONNECT command (RFC 1928)
- Username/password authentication (RFC 1929)
- IPv4, IPv6 and domain name resolution
- Optional file logging to /share
