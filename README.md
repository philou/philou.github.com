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
