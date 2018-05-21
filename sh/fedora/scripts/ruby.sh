#!/bin/sh

RUBY_IS_AVAILABLE="$(ruby -v 2>&1 >/dev/null)"

if [[ ${RUBY_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][ (> Ruby language]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[ (> Ruby language] Start Install ${txtrst}";

    # https://developer.fedoraproject.org/tech/languages/ruby/gems-installation.html
	  dnf install -y ruby-devel;
    dnf install -y rubygem-thor;
    gem install bundler

	echo -e "${bakgrn}[ (> Ruby language] Finish Install ${txtrst}";

fi
