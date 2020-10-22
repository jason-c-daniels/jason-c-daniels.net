# Maintaining this site

## Install and configure Jekyll
Read the many fine tutorials online about how to do this. I used [this one](https://jekyllrb.com/docs/quickstart/). Since I'm maintaining this using Linux Mint, you'd do well to be running this on a compatible system. That is one that's POSIX compliant with bash, git, and ruby.

## See changes as they happen.
- To maintain this site, and view the results in real time, open up two terminal windows.
- In the first run the 'run-local-site' script. Use chmod u+x if needed. This will serve the site.
- In the second run the 'auto-build-site' script. Use chmod u+x if needed. This will automatically rebuild the site as you make changes.


## Other scripts
- If you will be creating your own scripts in this folder and want frequent access to these or other scripts in a terminal, run 'source _tools/set-env' in a terminal. From then on the executable scripts will always be in the path.
- *new-category* - This script creates a category folder, copies the based template
- *new-page* - This script creates a new simple/standalone page. The page will be created as <site-root>/<page-name>/<page-name>.md. Run new-page --help for detailed use.
- *new-post* - This script creates a new categorized post. If the category folder has a _POST-TEMPLATE.md file in it, that file will be used as the starting template, otherwise the default one in _templates/_posts will be used. The file will be created as <site-root>/<category-name>/_posts/UNPUBLISHED.<post-name>.md. Run new-post --help for detailed use.
- *publish-post* - This script publishes an unpublished post. (i.e. sets the published date in the file name as well as the YML header).
- *unpublish-post* - This script will take a named post within a named category and unpublish it, that is, remove the date-stamp from the name (it's changed to UNPUBLISHED-...). Use with caution on posts that have been comitted/pushed to your master branch.

## Publishing
- Since you cloned this repository with git all you need to do is commit and push your changes to your github account.
- Navigate to your project in github, and watch it render the pages.
- Marvel at the glory that is markdown transformed into HTML.

## Note
- As I make more scripts dedicated to certain tasks, such as starting, publishing, and ammending articles...etc. I will update these instructions. If certain scripts require their own instructions a markdown file for running the script will be created.
