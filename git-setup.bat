Rem run after cargo generate [url] --name [new-project-name]
gh repo create --public {{project-name}}
git init
git add -A
git commit -m "Created using cargo generate --git https://github.com/gregwoods/stm32f4-05-serial --name {{project-name}}"
git push -u origin master
