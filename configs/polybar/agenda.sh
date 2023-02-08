#!/usr/bin/env bash

AGENDA=$(python3 ~/.config/i3/i3-agenda/i3_agenda/i3_agenda.py \
    -c ~/.config/i3/i3-agenda-credentials.json \
    --show-event-before 120 \
    --hide-event-after 10 \
    -ttl 60 \
    --no-event-text ""
    2>/dev/null)

if [ -n "$AGENDA" ] && [[ $AGENDA != "Traceback"* ]]; then
    echo "󰃭  $AGENDA"
else
    echo ""
fi
