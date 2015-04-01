pathogen-refresh() {
	pushd ~/.vim/bundle
		for i in `ls`; do
			pushd "$i"
				git pull
			popd
		done
	popd
}
