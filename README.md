# Pathogen Refresh

Refresh all of your vim plugins installed with pathogen.

Put this in your ~/.bashrc or ~/.zshrc

```bash
pathogen-refresh() {
	pushd ~/.vim/bundle
		for i in `ls`; do
			pushd "$i"
				git pull
			popd
		done
	popd
}
```

Or, download pathogen-refresh.sh and source that file directly.
