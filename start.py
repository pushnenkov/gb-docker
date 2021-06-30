import os.path
from shutil import copyfile

dirs = ['data/mysql57db', 'data/redisdb', 'log/cron_log', 'log/httpd_log', 'log/nginx_log', 'log/node_log',
'log/php_log', 'log/pm2_log']
                                     
for newpath in dirs:
    if not os.path.exists(newpath):
        os.makedirs(newpath)


copyfile('./.env.example', './.env')
print('Done!');