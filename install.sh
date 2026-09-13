#!/usr/bin/env bash
# ==============================================================================
# Deep Research Plugin for Antigravity - Universal Installer
# Remote 1-Liner:
#   curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/deep-research/main/install.sh | bash
# ==============================================================================

set -e

# ANSI Styling
BOLD="\033[1m"
CYAN="\033[96m"
PURPLE="\033[95m"
GREEN="\033[92m"
YELLOW="\033[93m"
RESET="\033[0m"

echo -e "${PURPLE}================================================================${RESET}"
echo -e "${BOLD} 🔬 Deep Research Engine for Antigravity${RESET}"
echo -e "${PURPLE}================================================================${RESET}\n"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd)"

# Auto-clone repository if executed directly from curl/pipe
if [ ! -d "${SCRIPT_DIR}/skills" ] || [ ! -f "${SCRIPT_DIR}/skills/deep-research/SKILL.md" ]; then
    echo -e "${CYAN}>>> Running from remote pipe. Cloning latest repository...${RESET}"
    TMP_CLONE="$(mktemp -d /tmp/deep-research-install.XXXXXX)"
    if ! command -v git >/dev/null 2>&1; then
        echo ">>> Installing git..."
        if command -v apt-get >/dev/null 2>&1; then
            if [ "$(id -u)" -eq 0 ]; then apt-get update -qq && apt-get install -y -qq git; else sudo apt-get update -qq && sudo apt-get install -y -qq git; fi
        elif command -v dnf >/dev/null 2>&1; then
            if [ "$(id -u)" -eq 0 ]; then dnf install -y git; else sudo dnf install -y git; fi
        elif command -v pacman >/dev/null 2>&1; then
            if [ "$(id -u)" -eq 0 ]; then pacman -Sy --needed --noconfirm git; else sudo pacman -Sy --needed --noconfirm git; fi
        elif command -v zypper >/dev/null 2>&1; then
            if [ "$(id -u)" -eq 0 ]; then zypper --non-interactive install git; else sudo zypper --non-interactive install git; fi
        fi
    fi
    git clone --depth 1 https://github.com/ImNotMrReaper/deep-research.git "${TMP_CLONE}"
    SCRIPT_DIR="${TMP_CLONE}"
    trap "rm -rf '${TMP_CLONE}'" EXIT
fi

PLUGIN_DIR="${HOME}/.gemini/config/plugins/deep-research"
SKILLS_DIR="${HOME}/.agents/skills/deep-research"

echo -e "${CYAN}>>> Installing Antigravity Plugin & Rules...${RESET}"
mkdir -p "${PLUGIN_DIR}"
cp -r "${SCRIPT_DIR}/"* "${PLUGIN_DIR}/" 2>/dev/null || true

if [ -d "${SCRIPT_DIR}/skills/deep-research" ]; then
    mkdir -p "${SKILLS_DIR}"
    cp -r "${SCRIPT_DIR}/skills/deep-research/"* "${SKILLS_DIR}/" 2>/dev/null || true
    echo -e "    ${GREEN}✓ Installed Agent Skill:${RESET} ${SKILLS_DIR}"
fi

echo -e "\n${GREEN}================================================================${RESET}"
echo -e "${GREEN} 🎉 DEEP RESEARCH ENGINE INSTALLED SUCCESSFULLY!${RESET}"
echo -e "${GREEN}================================================================${RESET}"
echo -e "Components active:"
echo -e "  • Plugin Directory:  ${PLUGIN_DIR}"
echo -e "  • Agent Skill:       ${SKILLS_DIR}"
echo -e "  • Slash Command:     /deepresearch"
echo -e ""
echo -e "Usage:"
echo -e "  Inside any Antigravity pair-programming session, type:"
echo -e "  ${PURPLE}/deepresearch <Topic or Question>${RESET}\n"
