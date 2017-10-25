#!/bin/sh



echo "Ubuntu ide u sleep mode"
echo "unesi za koliko sekundi zelis da Ubuntu ide spavat:"
read time
echo "spavanje ide za $time sekundi"

sudo bash -c "sleep "$time"s; pm-suspend"



