echo "config vdom
edit root
config firewall
    edit NAT-HTTP
        set extip $1
    next
    edit NAT-HTTPS
        set extip $1
    next
end
end
exit" > /config/tmp/vip.txt
ssh -i /config/ssh/id_rsa hass@192.168.86.1