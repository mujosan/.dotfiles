function acp --description 'add, commit, push'
    git add .
    git commit -m "$argv"
    git push
end