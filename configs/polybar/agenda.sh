#!/usr/bin/env bash

AGENDA=$(python3 ~/.config/i3/i3-agenda/i3_agenda/i3_agenda.py \
    -c ~/.config/i3/i3-agenda-credentials.json \
    --show-event-before 120 \
    --hide-event-after 0 \
    -ttl 60 \
    --no-event-text "" \
    2>/dev/null)

if [ -n "$AGENDA" ] && [[ $AGENDA != "Traceback"* ]]; then
    AGENDA=$(sed -E 's/([12][0-9]):([0-9][0-9])/"$((\1 % 12 == 0 ? 12 : \1 % 12)):\2"/ge' <<<"echo $AGENDA")
    echo "󰃭  $AGENDA"
else
    echo ""
fi
