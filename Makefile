ENV ?= dev
MODE ?= Debug
PROJECT_NAME = env

setup-env:
	cp ./setup/env/$(ENV)/.env .env

start:
	make setup-env
	node node_modules/react-native/local-cli/cli.js start --reset-cache

run-ios:
	ENVFILE=.env react-native run-ios --simulator="iPhone X" --scheme="${PROJECT_NAME}.$(ENV)"

run-android:
	react-native run-android --variant="$(ENV)$(MODE)"

