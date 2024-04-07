#!/bin/bash

domain="Saurabh Sawant"
userName="$(git config user.name)"

if [[ "$userName" == "$domain" ]]; then
	echo "You are using username as per configuration, proceeding to commit"
	exit 0
else
	echo "Configured username is not as per config. it should be $domain"
	exit 1
fi
