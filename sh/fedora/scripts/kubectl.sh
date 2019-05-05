
#!/bin/sh

KUBECTL_IS_AVAILABLE="$(kubectl version 2>&1 >/dev/null)"

if [[ ${KUBECTL_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][kubectl]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[kubectl] Start Install ${txtrst}";

    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    chmod +x kubectl
    mv ./kubectl /usr/local/bin/kubectl

	echo -e "${bakgrn}[kubectl] Finish Install ${txtrst}";

fi
