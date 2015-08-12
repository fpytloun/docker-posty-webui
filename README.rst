Installation
============

First you need to have running `posty-api
<https://github.com/fpytloun/docker-posty-api>`_ container.

First get generated API key from running MySQL database
    .. code-block:: bash

       docker run -it --link mysql-server:mysql --rm mysql sh -c 'exec mysql -hmysql-server -uroot -proot -sss -e"SELECT access_token FROM posty.api_keys LIMIT 1;"'

Run container, link posty-api into it and set API_KEY
    .. code-block:: bash

       docker run --name posty-webui --link posty-api:9292 -e API_KEY=37924a0cd91a69112daffa95dc0b39cc -d posty-webui
