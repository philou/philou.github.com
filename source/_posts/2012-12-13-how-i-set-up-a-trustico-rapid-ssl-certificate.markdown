---
layout: post
title: How I set up a trustico rapid ssl certificate on heroku ssl endpoint
published: true
date: 2012-12-13
categories:
- DNS
- heroku
- SSL
posterous_url: http://philippe.bourgau.net/how-i-set-up-a-trustico-rapid-ssl-certificate
posterous_slug: how-i-set-up-a-trustico-rapid-ssl-certificate
---
<div>This can be quite time consuming if it is the first time you set up an ssl endpoint. Here is how I did it :</div><ol><li>Purchase a rapidssl certificate for my domain on <a href="http://www.trustico.com" target="_blank">www.trustico.com</a>. Make sure to use the insurrance option so that you can download the private key later. I had to setup an email account at <a href="mailto:admin@mes-courses.fr" target="_blank">admin@mes-courses.fr</a> so that I could receive their confirmation link email.</li> <li>Once you have bought your certificate, login in to you trustico account and download your certificate, the intermediate certificate, and the private key.</li><li>Concatenate the final and intermediate certificates to a single file (let&#39;s call it server.crt).</li> <li>Add the ssl endpoint add on to your heroku application 
```
heroku addons:add ssl:endpoint
```
</li><li>Upload your certificate 
```
heroku certs:add server.crt private.key
```
</li><li>run 
```
heroku certs
```
, verify that you have an ssl endpoint with an explicit trusted &quot;True&quot; value</li> <li>Note the ssl-endpoint full domain from the previous command line, and add a DNS CNAME record from your domain to this endpoint</li> <li>Check that there are no A DNS records pointing to heroku ips on your dns configuration (It used to be the case with older versions of heroku)</li><li>Wait until dns are updated to check that it is working.</li></ol><div> You can check how your dns settings are spreading with <a href="http://www.whatsmydns.net/" target="_blank">www.whatsmydns.net</a> and <a href="http://www.reverse-dns.fr/">http://www.reverse-dns.fr/</a>. The <a href="https://devcenter.heroku.com/articles/ssl-endpoint">heroku ssl-endpoint help page</a> was a real brain saver<a href="https://devcenter.heroku.com/articles/ssl-endpoint">.</a></div>
