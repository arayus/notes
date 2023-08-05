Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

scoop install git
scoop bucket add extras
scoop install vivaldi vscode shadowsocks shadowsocks-v2ray-plugin
