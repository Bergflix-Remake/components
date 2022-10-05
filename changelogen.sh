#!/bin/bash
echo -e "$(npx changelogen)\n$(cat CHANGELOG.md)" > CHANGELOG.md