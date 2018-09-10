---
keywords: "DNS, heroku, ssl, trustico, rapid, certificate, endpoint"
layout: single
title: How I set up a trustico rapid ssl certificate on heroku ssl endpoint
published: true
date: 2012-12-13
categories:
- DNS
- heroku
- SSL
posterous_url: http://philippe.bourgau.net/how-i-set-up-a-trustico-rapid-ssl-certificate
posterous_slug: how-i-set-up-a-trustico-rapid-ssl-certificate
comments: true
---
This can be quite time consuming if it is the first time you set up an ssl endpoint. Here is how I did it :

* Purchase a RapidSSL certificate for my domain on <a href="http://www.trustico.com" target="_blank">www.trustico.com</a>. Make sure to use the insurance option so that you can download the private key later. I had to setup an email account at <a href="mailto:admin@mes-courses.fr" target="_blank">admin@mes-courses.fr</a> so that I could receive their confirmation link email.</li> <li>Once you have bought your certificate, login in to you Trustico account and download your certificate, the intermediate certificate, and the private key.</li><li>Concatenate the final and intermediate certificates to a single file (let's call it server.crt).
* Add the ssl endpoint add on to your Heroku application

```sh
heroku addons:add ssl:endpoint
```

* Upload your certificate

```sh
heroku certs:add server.crt private.key
```

* Run the following and verify that you have an ssl endpoint with an explicit trusted 'True' value

```sh
heroku certs
```

* Note the ssl-endpoint full domain from the previous command line, and add a DNS CNAME record from your domain to this endpoint
* Check that there are no A DNS records pointing to Heroku IPs on your dns configuration (It used to be the case with older versions of Heroku)
* Wait until dns servers are updated to check that it is working.

You can check how your dns settings are spreading with <a href="http://www.whatsmydns.net/" target="_blank">www.whatsmydns.net</a> and <a href="http://www.reverse-dns.fr/">http://www.reverse-dns.fr/</a>. The <a href="https://devcenter.heroku.com/articles/ssl-endpoint">Heroku ssl-endpoint help page</a> was a real brain saver.

### EDIT 10/10/2013

Any certificate will eventually expire, and need to be renewed. The process for this (at Trustico at least) is to generate a completely new certificate. To install this new certificate on Heroku, start by combining the new certificate files as you did the first time, and then use

```
heroku certs:update server.crt private.key
```

instead of Heroku certs:add. This should be enough, there is no need to update any dns entry.

To make sure the new certificate is used, visit the Heroku ssl endpoint directly (get it by running Heroku certs) and then visit your ssl site to check the certificate infos from your browser.
