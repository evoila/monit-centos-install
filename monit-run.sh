#!/bin/bash
echo
echo "### Starting monit-run.sh ... ###"
echo

#checks syntax of monit configfile
echo "Check syntax of monitrc (monit controlfile):"
monit -t
echo

monit reload


echo "  ┌────────────────────────────────────────────────────────────────┬─────────────────┐"
echo "  │   ┬ ┬ ┬ ┬ ┬ ┬    ╔══╗  ╦   ╦  ╔══╗  ╦  ╦    ╔══╗     ┌┬┐ ┌─┐   │                 │"
echo "  │   │││ │││ │││    ║═╣   ╚╗ ╔╝  ║  ║  ║  ║    ╠══╣      ││ ├┤    │   evoila GmbH   │"
echo "  │   └┴┘ └┴┘ └┴┘ o  ╚══╝   ╚═╝   ╚══╝  ╩  ╩══╝ ╩  ╩  o  ─┴┘ └─┘   │ Mainz / Germany │"
echo "  │                                                                │                 │"
echo "  │    ┌─┐┌─┐┬─┐┬  ┬┬┌─┐┌─┐  ┬┌─┐  ┌─┐┌┬┐┌─┐┬─┐┌┬┐┬┌┐┌┌─┐          │  www.evoila.de  │"
echo "  │    └─┐├┤ ├┬┘└┐┌┘││  ├┤   │└─┐  └─┐ │ ├─┤├┬┘ │ │││││ ┬          │ info@evoila.de  │"
echo "  │    └─┘└─┘┴└─ └┘ ┴└─┘└─┘  ┴└─┘  └─┘ ┴ ┴ ┴┴└─ ┴ ┴┘└┘└─┘  o o o   │                 │"
echo "  └────────────────────────────────────────────────────────────────┴─────────────────┘"
