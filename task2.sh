#!/bin/bash

ps axo pid,command | egrep '^\s*\d{5}\b' | grep '127.0.0.1' | sort -rn