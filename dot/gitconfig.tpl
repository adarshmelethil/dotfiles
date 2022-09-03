[user]
	name = Adarsh Melethil
	email = adarsh-emburse
[pull]
	rebase = true
	ff = only
[init]
	defaultBranch = master

# Use work config if in work repo and personal everywhere else
[includeIf "gitdir:work/"]
    path = ~/work/.gitconfig
