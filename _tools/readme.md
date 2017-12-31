# Maintaining this site

## Install and configure Jekyll
Read the many fine tutorials online about how to do this. I used [this one](https://jekyllrb.com/docs/quickstart/). Since I'm maintaining this using Linux Mint, you'd do well to be running this on a compatible system. That is one that's POSIX compliant with bash, git, and ruby.

## See changes as they happen.
- To maintain this site, and view the results in real time, open up two terminal windows.
- In the first run the 'run-local-site' script. Use chmod u+x if needed. This will serve the site.
- In the second run the 'auto-build-site' script. Use chmod u+x if needed. This will automatically rebuild the site as you make changes.


## Other scripts
- If you will be creating your own scripts in this folder and want frequent access to these or other scripts in a terminal, run 'source _tools/set-env' in a terminal. From then on the executable scripts will always be in the path.

## Publishing
- Since you cloned this repository with git all you need to do is commit and push your changes to your github account.
- Navigate to your project in github, and watch it render the pages.
- Marvel at the glory that is markdown tranformed into HTML.

## Note
- As I make more scripts dedicated to certain tasks, such as starting, publishing, and ammending articles...etc. I will update these instructions. If certain scripts require their own instructions a markdown file for running the script will be created.
