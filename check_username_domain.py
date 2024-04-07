#!/usr/bin/env python3
import subprocess

expectedUserName = "Saurabh Sawant"

userName = subprocess.run(["git", "config", "user.name"], capture_output=True, text=True).stdout.strip()

if userName == expectedUserName:
    print("You are using username as per configuration, proceeding to commit")
    exit(0)
else:
    print(f"Configured username is not as per config. It should be {expectedUserName}")
    exit(1)

