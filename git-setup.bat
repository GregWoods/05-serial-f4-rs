Rem run after cargo generate [url] --name [new-project-name]
gh repo create --public {{project-name}}
git init
git add -A
git commit -m "Created using cargo generate from /gregwoods/stm32f4-05-serial"
git push -u origin master
