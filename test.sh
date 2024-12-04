#!/bin/sh
apt update && apt install -y shadowsocks

cat > /etc/shadowsocks.json << EOF
{
	"server":"0.0.0.0",
	"server_port":1080,
	"password":"luobo2024",
	"method":"aes-256-cfb"
}
EOF

ssserver -c /etc/shadowsocks.json -d start
