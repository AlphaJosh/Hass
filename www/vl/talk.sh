#!/bin/bash
cd /config/www/vl/voice/
newest="$(ls -1t | head -1)"
curl http://192.168.1.180/play?u=http://192.168.86.2:8123/local/vl/voice/{$newest}
