- [X] Regenerate _preview.sh
- [X] Copy gitignore
- [ ] check that _absolutify_links.sh is working
- [ ] check that _check_fixmes.sh is working
#!/bin/sh

BASEDIR=$(dirname "$0")

RED="\033[31m"
YELLOW="\033[33m"
NORMAL="\033[0;39m"

echo "Checking for maintenance FIXMEs ${YELLOW}"
find . -type f -and -depth 1 -and -not -name "*_check_fixmes.sh*" -and -exec grep -H "FIXME" {} \; | sort
find "$BASEDIR" -type f -and -depth 1 -and -not -name "*_check_fixmes.sh*" -and -exec grep -H "FIXME" {} \; | sort
echo $NORMAL

- [X] check that _check_links.sh is working
- [ ] check that _grep_tweets.sh is working
- [ ] check that _local_preview.sh is working
- [ ] check that _new_post.sh is working
- [ ] check that _preview.sh is working
- [ ] check that _preview.sh.template is working
- [ ] check that _serve.sh is working
- [ ] check that _update_Gemfile.local.sh is working
- [ ] check that _update_version.sh is working
- [ ] check that _word_count.rb is working
- [ ] create a submodule
- [ ] publish to github
