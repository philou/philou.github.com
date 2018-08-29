---
keywords: "heroku, postgre, copy, database, app, another"
layout: single
title: How to copy a database from an heroku app to another
published: true
date: 2013-01-11
categories:
- heroku
- postgre
posterous_url: http://philippe.bourgau.net/how-to-copy-a-database-from-an-heroku-app-to
posterous_slug: how-to-copy-a-database-from-an-heroku-app-to
comments: true
---
<p>For <a href="http://www.mes-courses.fr">mes-courses.fr</a>, I am using another heroku app as "integration" app, where I can do late verifications before deploying to my production app. If you don't already do this, I recommend you to start now !</p>
<p>One thing that I needed was to copy data from my production app to my integration app. It turns out that <a href="https://devcenter.heroku.com/articles/heroku-postgres-import-export">heroku</a> makes this very easy :</p>
```sh
heroku pgbackups:restore DATABASE `heroku pgbackups:url --app my-app-prod` --app my-app-integ --confirm my-app-integ
```
