#!/bin/sh


if [[ -e "/opt/meetfranz" ]]; then

    echo -e "${bakgrn}[installed][meetfranz]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[common][meetfranz] Start Install ${txtrst}";

    dnf install -y libX11-devel libXext-devel libXScrnSaver-devel libxkbfile-devel

    mkdir -p /opt/meetfranz
    wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.20/franz-5.0.0-beta.20-x86_64.AppImage
    mv franz-5.0.0-beta.20-x86_64.AppImage /opt/meetfranz/Franz
    cp sh/common/meetfranz/franz_256x256.png /opt/meetfranz/franz_256x256.png
    chmod +x /opt/meetfranz/Franz /opt/meetfranz/franz_256x256.png

#    # meetfranz
#    wget --max-redirect=10 -O Franz-linux-x64.tgz https://github.com/meetfranz/franz-app-legacy/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz
#    mkdir -p /opt/meetfranz
#    tar zxvf Franz-linux-x64.tgz -C /opt/meetfranz
#    rm -rf Franz-linux-x64.tgz

    # Add to applications list (thanks 4ndrej)
    echo -e '' >> /opt/meetfranz/meetfranz.desktop;
    sudo rm -rf /usr/share/applications/meetfranz.desktop
    sudo ln -s /opt/meetfranz/meetfranz.desktop /usr/share/applications/meetfranz.desktop

    # Add bin alias
    sudo rm -rf /bin/meetfranz
    sudo ln -s /opt/meetfranz/Franz /bin/meetfranz

# Set the icon (thanks gcaracuel)
echo -e '[Desktop Entry]
Version=1.0
Type=Application
Name=Franz
GenericName=meetfranz
Exec=/opt/meetfranz/Franz %F
Terminal=false
Icon=/opt/meetfranz/franz_256x256.png
Categories=Messenger;
StartupNotify=true
Actions=Window;Document;

[Desktop Action Window]
Name=New Window
Exec=/opt/meetfranz/Franz -n
OnlyShowIn=Unity;

[Desktop Action Document]
Name=New File
Exec=/opt/meetfranz/Franz --command new_file
OnlyShowIn=Unity;' >> /opt/meetfranz/meetfranz.desktop;

    echo ""
    echo "meetfranz installed successfully!"
    echo "Run with: meetfranz"

    echo -e "${bakcyn}[common][meetfranz] Finish Install ${txtrst}";

fi
