# run after cargo generate [url] --name [new-project-name]
gh repo create --public {{project-name}}
git init
git add -A
git push -u origin master
