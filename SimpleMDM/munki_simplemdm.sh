#!/usr/bin/env zsh

echo "Soll das Cache-Verzeichnis geleert werden? [Y/N] "
read remove_choice

case ${remove_choice} in
  y|Y )
  rm -rfv /Volumes/Projects/com.moccu.munki/Cache/*
  echo "Cache geleert." ;;

  n|N ) ;;
esac

for element in $(ls -1 '/Volumes/Projects/com.moccu.munki/RecipeOverrides' | cut -d "." -f 1-2);
  do
  autopkg run -v ${element} -k MUNKI_REPO_PLUGIN="SimpleMDMRepo" -k SIMPLEMDM_API_KEY="gL8NXZMDaCeadygjZT0rpWkcFC4FyqHZ5ZZUZwaXvMtZ2LyuibVHco3EwrEwt0E7" -k extract_icon=True
  done
