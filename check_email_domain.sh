#!/bin/bash

domain="ssawant@dnyanyog.org"
email="$(git config user.email)"

if [[ "$email" == "$domain" ]]; then
	echo "You are using email as per configuration, proceeding to commit"
	exit 0
else
	echo "Configured email is not as per config. it should be $domain"
	exit 1
fi
