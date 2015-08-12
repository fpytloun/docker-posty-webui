#!/bin/bash

API_HOST=${API_HOST:-posty-api}
API_PORT=${API_PORT:-9292}
API_KEY=${API_KEY:-123456}

HOME="/usr/local/apache2/htdocs"

cat << EOF > ${HOME}/settings.json
{
    "servers": [
        {
            "caption": "Posty server",
            "url": "${API_HOST}:${API_PORT}/api/v1",
            "key": "${API_KEY}"
        }
    ]
}
EOF

httpd-foreground
