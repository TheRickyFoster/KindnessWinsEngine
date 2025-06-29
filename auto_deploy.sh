#!/bin/bash
echo 'Auto-deploying KindnessWins Engine...'
git init
git add .
git commit -m "Initial commit of KindnessWins Engine"
git branch -M main
git remote add origin https://github.com/TheRickyFoster/KindnessWinsEngine.git
git push -u origin main
echo 'Deployment complete!'
