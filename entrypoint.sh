#!/usr/bin/env bash

cp /problem-matcher.json $HOME
echo "::add-matcher::$HOME/problem-matcher.json"
/splinter "$@"
