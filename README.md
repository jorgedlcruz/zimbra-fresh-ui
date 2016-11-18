# Zimbra Fresh UI
In this Repository you will find how to download and change some minor files in order to add a fresh aspect to your Zimbra Inbox.
Supported for ZCS 8.6.0 and 8.7.x

![alt tag](https://github.com/jorgedlcruz/zimbra-fresh-ui/raw/master/zimbra-fresh-ui.png)

# Instructions
## Assuming you have git installed
* You will need git installed on your Zimbra Server, if not, please do apt-get install git or yum install git, as per your OS

Now clone the repository to /tmp or /root folder, whatever folder is okay

```bash
git clone https://github.com/jorgedlcruz/zimbra-fresh-ui.git
```

Move to the new folder, change the attributes for the install.sh script and run it, be aware that the mailboxd will be restarted

```bash
cd zimbra-fresh-ui
chmod +x install.sh
./install.sh
```

Return then to your Browser and pres F5, or refresh your Browser

