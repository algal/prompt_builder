#: Launches a quarto serving docs from notebooks
preview:
	nbdev_preview

#: Runs tests inferred from notebooks
test:
	nbdev_test

#: Prepare working directory for a git commit
prepare:
	nbdev_prepare

#: Generate Python packge from notebooks
export:
	nbdev_export

.PHONY: server test prepare all
