#!/bin/bash
set -e

chown -R screeps:screeps /screeps
chmod -R 755 /screeps
cd /screeps

if [[ ! -f ".screepsrc" ]]; then
	echo 'Init world'
	su screeps -c "echo '<Insert steam api key in .screepsrc>' | npx screeps init"
fi

su screeps -c "npx screeps start --host 0.0.0.0 --cli_host 0.0.0.0 --port 21025 --cli_port 21026"