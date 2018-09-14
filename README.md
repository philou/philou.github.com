# Philou's Blog

## Notes

### To avoid "No GitHub API authentication" error

The solution is [here](https://github.com/github/pages-gem/issues/399)
As suggested, I ended up creating a github token and putting it in _preview.sh :

```bash
#!/bin/sh

export JEKYLL_GITHUB_TOKEN=XXX
./_serve.sh
```

A token with only repo-read and notifications accesses seem to fix the issue.

### Square teaser images

I overwrote theme default max-height for teaser images to let them appear in full (cf `_sass/full-teasers.scss`). The recommended size for a teaser (or open graph) image is 1200x1200 (https://www.h3xed.com/web-and-internet/how-to-use-og-image-meta-tag-facebook-reddit).

To make sure not to screw up the design, I'll have to keep sure that all teaser images are square or at least not high rectangles.

OG images should ideally be croppable by the middle vertically for facebook, but as I don't plan to publish to facebook a lot, it's not a problem.
