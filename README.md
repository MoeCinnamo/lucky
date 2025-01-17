<h1 align="center">
  <img src="Lucky.png" alt="Lucky Core" width="200">
  <br>Lucky Core<br>
</h1>

<h3 align="center">A network tool that brings you good luck!</h3>

<p align="center">
  <a href="https://goreportcard.com/report/github.com/LuckyCubeX/lucky">
    <img src="https://goreportcard.com/badge/github.com/LuckyCubeX/lucky?style=flat-square">
  </a>
  <img src="https://img.shields.io/github/go-mod/go-version/LuckyCubeX/lucky?style=flat-square">
  <a href="https://github.com/LuckyCubeX/lucky/releases">
    <img src="https://img.shields.io/github/release/LuckyCubeX/lucky/all.svg?style=flat-square">
  </a>
  <a href="https://github.com/LuckyCubeX/lucky">
    <img src="https://img.shields.io/badge/release-Alpha-ff0000?style=flat-square">
  </a>
</p>

## Features

- Local HTTP/HTTPS/SOCKS server with authentication support
- VMess, VLESS, Shadowsocks, Trojan, Snell, TUIC, Hysteria protocol support
- Built-in DNS server that aims to minimize DNS pollution attack impact, supports DoH/DoT upstream and fake IP.
- Rules based off domains, GEOIP, IPCIDR or Process to forward packets to different nodes
- Remote groups allow users to implement powerful rules. Supports automatic fallback, load balancing or auto select node
  based off latency
- Remote providers, allowing users to get node lists remotely instead of hard-coding in config
- Netfilter TCP redirecting. Deploy Clash on your Internet gateway with `iptables`.
- Comprehensive HTTP RESTful API controller

## Dashboard

The dashboard is under development...

<!--A web dashboard with first-class support for this project has been created; it can be checked out at [metacubexd](https://github.com/MetaCubeX/metacubexd).-->

## Configration example

Configuration example is located at [/docs/config.yaml](https://github.com/LuckyCubeX/lucky/blob/Alpha/docs/config.yaml).

## Docs

Documentation can be found in [Lucky Core Docs](https://luckycubex.github.io/lucky/docs).

## For development

Requirements:
[Go 1.20 or newer](https://go.dev/dl/)

Build Clash.Meta:

```shell
git clone https://github.com/LuckyCubeX/lucky.git
cd Clash.Meta && go mod download
go build
```

Set go proxy if a connection to GitHub is not possible:

```shell
go env -w GOPROXY=https://goproxy.io,direct
```

Build with gvisor tun stack:

```shell
go build -tags with_gvisor
```

### IPTABLES configuration

Work on Linux OS which supported `iptables`

```yaml
# Enable the TPROXY listener
tproxy-port: 9898

iptables:
  enable: true # default is false
  inbound-interface: eth0 # detect the inbound interface, default is 'lo'
```

## Debugging

Check [wiki](https://luckycubex.github.io/lucky/docs) to get an instruction on using debug
API.

## Credits

- [Dreamacro/clash](https://github.com/Dreamacro/clash)
- [MetaCubeX/Clash.Meta](https://github.com/MetaCubeX/Clash.Meta)
- [SagerNet/sing-box](https://github.com/SagerNet/sing-box)
- [riobard/go-shadowsocks2](https://github.com/riobard/go-shadowsocks2)
- [v2ray/v2ray-core](https://github.com/v2ray/v2ray-core)
- [WireGuard/wireguard-go](https://github.com/WireGuard/wireguard-go)
- [yaling888/clash-plus-pro](https://github.com/yaling888/clash)

## License

This software is released under the GPL-3.0 license.
