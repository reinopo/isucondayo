# infra 設定スナップショット

`/etc` 配下にある実ファイルのコピー。チューニング内容をバージョン管理するために置いている。
反映するときは下記パスへコピーして各サービスを reload/restart すること。

| repo内のファイル | デプロイ先 | 反映コマンド |
|---|---|---|
| infra/nginx/isucon-php.conf | /etc/nginx/sites-available/isucon-php.conf | `sudo nginx -t && sudo systemctl reload nginx` |
| infra/php-fpm/www.conf | /etc/php/8.3/fpm/pool.d/www.conf | `sudo systemctl restart php8.3-fpm` |
| infra/mysql/z-isucon.cnf | /etc/mysql/mysql.conf.d/z-isucon.cnf | `sudo systemctl restart mysql` |
