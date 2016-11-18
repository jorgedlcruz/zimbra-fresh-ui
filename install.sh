#!/bin/bash
## Backup of the files, in case something goes wrong
if [ ! -f skins.tar.gz ]; then
echo "Creating a Backup of the _base3 folder"
tar -zcf skins.tar.gz /opt/zimbra/jetty/webapps/zimbra/skins
fi

if [ ! -f css.tar.gz ]; then
echo "Creating a Backup of the css folder"
tar -zcf css.tar.gz /opt/zimbra/jetty/webapps/zimbra/css
fi
## Rsync of the new files into the actual folders
echo "Doing a rsync of the new files into the Zimbra folders"
rsync -a skins/ /opt/zimbra/jetty/webapps/zimbra/skins/
rsync -a css/ /opt/zimbra/jetty/webapps/zimbra/css/

## Mailboxd restart, it can take some time
echo "Restarting the Mailboxd"
su - zimbra -c 'zmmailboxdctl restart'

## Browser reload
echo "Congratulations, you can experience now the changes, please refresh your browser"