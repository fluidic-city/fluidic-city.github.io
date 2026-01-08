#!/bin/bash

CONFIG_FILE=_config.yml 

echo "Entry point script running"
echo "Installing/updating gems..."
bundle install || exit 1

/bin/bash -c "exec jekyll serve --watch --port=8080 --host=0.0.0.0 --livereload --verbose --trace --force_polling"&

while true; do

  inotifywait -q -e modify,move,create,delete $CONFIG_FILE

  if [ $? -eq 0 ]; then
 
    echo "Change detected to $CONFIG_FILE, restarting Jekyll"

    jekyll_pid=$(pgrep -f jekyll)
    kill -KILL $jekyll_pid

    echo "Re-installing gems..."
    bundle install || echo "Warning: bundle install failed, continuing anyway..."
    /bin/bash -c "exec jekyll serve --watch --port=8080 --host=0.0.0.0 --livereload --verbose --trace --force_polling"&

  fi

done
