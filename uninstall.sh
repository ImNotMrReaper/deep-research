#!/usr/bin/env bash
# ==============================================================================
# Deep Research Plugin Clean Uninstaller
# Remote 1-Liner:
#   curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/deep-research/main/uninstall.sh | bash
# ==============================================================================

set -e

RED="\033[91m"
GREEN="\033[92m"
CYAN="\033[96m"
RESET="\033[0m"

echo -e "${CYAN}>>> Uninstalling Antigravity Deep Research Plugin...${RESET}"

rm -rf "${HOME}/.gemini/config/plugins/deep-research"
rm -rf "${HOME}/.agents/skills/deep-research"

echo -e "${GREEN}✓ Deep Research Plugin cleanly uninstalled.${RESET}\n"
