#TODO 
 #. get 1 parameter, filename
 #. open in neovim
 #. maybe even making a keybinding to the notes

Note() {
	dt=$(date '+%d/%m/%Y %H:%M:%S')
	cd 'the directory to your notes'
	mkdir $1
	cd $1
	NOTEFILENAME="$1.md"
	touch $NOTEFILENAME
	nvim -c "norm Go" \
		-c "norm Go-- $1 - Note --" \
		-c "norm Go## $(date +%d/%m/%Y)" \
		-c "norm Go# $(date +%H:%M:%S)" \
		-c "norm G2o" \
		-c "norm zz" \
		-c "startinsert" $NOTEFILENAME
	
}

Note $1
