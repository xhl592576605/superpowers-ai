#!/usr/bin/env bash
# SessionStart hook for superpowers plugin

set -euo pipefail

# Determine plugin root directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
PLUGIN_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

# Check if legacy skills directory exists and build warning
warning_message=""
legacy_skills_dir="${HOME}/.config/superpowers/skills"
if [ -d "$legacy_skills_dir" ]; then
    warning_message="\n\n<important-reminder>IN YOUR FIRST REPLY AFTER SEEING THIS MESSAGE YOU MUST TELL THE USER:⚠️ **WARNING:** Superpowers now uses Claude Code's skills system. Custom skills in ~/.config/superpowers/skills will not be read. Move custom skills to ~/.claude/skills instead. To make this message go away, remove ~/.config/superpowers/skills</important-reminder>"
fi

# Check if ui-ux-pro-max skill exists, if not, try to initialize
ui_ux_warning=""
# Check project directory first, then user directory, then plugin directory
ui_ux_skill_locations=(
    "${PWD}/.claude/skills/ui-ux-pro-max/SKILL.md"
    "${HOME}/.claude/skills/ui-ux-pro-max/SKILL.md"
    "${PLUGIN_ROOT}/skills/ui-ux-pro-max/SKILL.md"
)

ui_ux_skill_exists=false
for skill_path in "${ui_ux_skill_locations[@]}"; do
    if [ -f "$skill_path" ]; then
        ui_ux_skill_exists=true
        break
    fi
done

if [ "$ui_ux_skill_exists" = false ]; then
    # Try to run uipro init in project root
    if command -v uipro &> /dev/null; then
        uipro_init_output=$(uipro init --ai claude 2>&1) || true
        if echo "$uipro_init_output" | grep -q "error\|Error\|ERROR\|command not found\|not installed"; then
            ui_ux_warning="\n\n<important-reminder>IN YOUR FIRST REPLY AFTER SEEING THIS MESSAGE YOU MUST TELL THE USER:⚠️ **ui-ux-pro-max skill not found.** Please install uipro-cli: npm install -g uipro-cli</important-reminder>"
        fi
    else
        ui_ux_warning="\n\n<important-reminder>IN YOUR FIRST REPLY AFTER SEEING THIS MESSAGE YOU MUST TELL THE USER:⚠️ **ui-ux-pro-max skill not found.** Please install uipro-cli: npm install -g uipro-cli</important-reminder>"
    fi
fi

# Read using-superpowers content
using_superpowers_content=$(cat "${PLUGIN_ROOT}/skills/using-superpowers/SKILL.md" 2>&1 || echo "Error reading using-superpowers skill")

# Escape string for JSON embedding using bash parameter substitution.
# Each ${s//old/new} is a single C-level pass - orders of magnitude
# faster than the character-by-character loop this replaces.
escape_for_json() {
    local s="$1"
    s="${s//\\/\\\\}"
    s="${s//\"/\\\"}"
    s="${s//$'\n'/\\n}"
    s="${s//$'\r'/\\r}"
    s="${s//$'\t'/\\t}"
    printf '%s' "$s"
}

using_superpowers_escaped=$(escape_for_json "$using_superpowers_content")
warning_escaped=$(escape_for_json "$warning_message")
ui_ux_warning_escaped=$(escape_for_json "$ui_ux_warning")

# Output context injection as JSON
cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "<EXTREMELY_IMPORTANT>\nYou have superpowers.\n\n**Below is the full content of your 'superpowers:using-superpowers' skill - your introduction to using skills. For all other skills, use the 'Skill' tool:**\n\n${using_superpowers_escaped}\n\n${warning_escaped}${ui_ux_warning_escaped}\n</EXTREMELY_IMPORTANT>"
  }
}
EOF

exit 0
