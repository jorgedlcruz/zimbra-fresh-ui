# Zimbra Fresh UI
In this Repository you will find how to download and change some minor files in order to add a fresh aspect to your Zimbra Inbox.
Supported for ZCS 8.6 and 8.7, it's not compatible with 8.7.1 at the moment

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

# Uninstall instructions
In case that you need to rollback, please follow the next instructions:

```bash
tar -xvf css.tar.gz
tar -xvf skins.tar.gz
/bin/cp -rfaxv opt/zimbra/jetty/webapps/zimbra/* /opt/zimbra/jetty/webapps/zimbra/
su - zimbra -c 'zmmailboxdctl restart'
```

========================================================================
### License
The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
