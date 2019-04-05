#!/bin/bash
cd /config/www/vl/voice/
newest="$(ls -1t | head -1)"
curl http://192.168.178.9/play?u=http://192.168.178.5/vl/voice/{$newest}
