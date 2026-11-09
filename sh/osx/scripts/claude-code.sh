#!/bin/sh

CLAUDE_CODE_IS_AVAILABLE="$(claude --version 2>&1 >/dev/null)"

if [[ ${CLAUDE_CODE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][claude-code]${txtrst}" ;

else

    echo -e "${bakcyn}[claude-code] Start Install ${txtrst}";

    curl -fsSL https://claude.ai/install.sh | bash
    brew install --cask claude

    echo -e "${bakgrn}[claude-code] Finish Install ${txtrst}";

fi
