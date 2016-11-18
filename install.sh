#!/bin/bash
## Backup of the files, in case something goes wrong
tar -zcvf skins.tar.gz /opt/zimbra/jetty/webapps/zimbra/skins
tar -zcvf css.tar.gz /opt/zimbra/jetty/webapps/zimbra/css

## Rsync of the new files into the actual folders
rsync -a skins/ /opt/zimbra/jetty/webapps/zimbra/skins/
rsync -a css/ /opt/zimbra/jetty/webapps/zimbra/css/

## Mailboxd restart, it can take some time
su - zimbra -c 'zmmailboxdctl restart'

## Browser reload
echo "Congratulations, you can experience now the changes, please refresh your browser"