#!/usr/bin/env bash

AGENDA=$(python3 ~/.config/i3/i3-agenda/i3_agenda/i3_agenda.py \
    -c ~/.config/i3/i3-agenda-credentials.json \
    --show-event-before 120 \
    --hide-event-after 10 \
    -ttl 60 \
    --no-event-text "" \
    2>/dev/null)

if [ -n "$AGENDA" ] && [[ $AGENDA != "Traceback"* ]]; then
    AGENDA=$(sed 's/\([12][0-9]\):\([0-9][0-9]\)/echo "$((\1 % 12 == 0 ? 12 : \1 % 12)):\2"/ge' <<< "$AGENDA")
    echo "󰃭  $AGENDA"
else
    echo ""
fi
