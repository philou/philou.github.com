# Philou's Blog

## Notes

### To avoid "No GitHub API authentication" error

The solution is [here](https://github.com/github/pages-gem/issues/399)
As suggested, I ended up creating a github token and putting it in _preview.sh :

```bash
#!/bin/sh

export JEKYLL_GITHUB_TOKEN=XXX
./_update_version.sh
./_serve.sh
```

A token with only repo-read and notifications accesses seem to fix the issue.

### If I get gem missing with _local_preview.sh

Local preview uses a different `Gemfile`. Whenever we update the main bundle, we should also update this alternate bundle with `BUNDLE_GEMFILE=Gemfile.local bundle update`

### How to include figures with links and credits

Here is the template I am using :

```liquid
{% assign figure_path="/imgs/...todo.jpg" | absolute_url %}
    
{% assign figure_alt="TODO" %}
    
{% capture figure_caption %}
TODO markdown
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}
```

### Images best sizes

* Teaser images : 600x315, 72dpi, compressed for minimal size (appears on the front page!)
* Open Graph images : 1800x945, 250dpi, not compressed to appear well on high precision devices

## Hacks made to Minimal Mistakes

These are hacks I've made to the Minimal Mistakes, that I'll try to push to the main repo.

### Update version

Minimal mistakes does not provide 'stable' or 'latest' branches. By default, github pages remote theme uses the latest commit. This can be broken ! In order to avoid this, I created a the `_update_version.sh` script that curls github to find the latest release, and updates `_config.yml` to point to this version. Everytime `_preview.sh` is ran, the version is updated.

### Grid homepage

In order to display teaser images and posts as a grid on the homepage, I inlined and merged layout code from `_layouts/home.html` and `_layouts/posts.html` directly into `index.html`.

It might be better to add this to home directly

### Email feed

I copied `_includes/footer.html` from minimal-mistakes-jekyll-4.12.2/_includes/footer.html to add my mail feed subscription button
