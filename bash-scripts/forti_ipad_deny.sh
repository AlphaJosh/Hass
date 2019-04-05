echo "config vdom
edit Home
config firewall policy
  edit 15
    set status enable
  end
end
exit" > /config/tmp/ipad.txt
ssh -i /config/ssh/id_rsa hass@192.168.86.1 < /config/tmp/ipad.txt