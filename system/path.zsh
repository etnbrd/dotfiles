# Get the list of topic, filtered by tags
dotfiles_topics $TAGS

# For each topic folder, if the folder is a bin folder, then add it to the path
for folder in $filtered_folders
do
  if [[ $(basename $folder) =~ '^bin' ]]; then
    [[ -n "$bin_folders" ]] && bin_folders+=':'$folder || bin_folders=$folder
  fi
done

export PATH="./bin:/usr/local/bin:/usr/local/sbin:$bin_folders:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

unset bin_folders