#!/bin/sh

CHROME_IS_AVAILABLE="$(google-chrome --version 2>&1 >/dev/null)"

if [[ ${CHROME_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Google Chrome]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Google Chrome] Start Install ${txtrst}";

cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

	dnf install -y google-chrome-stable ;
	echo -e "${bakgrn}[Google Chrome] Finish Install ${txtrst}";
fi