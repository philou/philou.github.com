/* This function will load script and call the callback once the script has loaded
 * From https://littlebigtech.net/posts/setting-up-cookie-compliance-for-google-analytics-on-a-jekyll-site/
 * From https://stackoverflow.com/questions/51833090/put-google-analytics-code-in-an-js-file/51833302
 */

function loadScriptAsync(scriptSrc, callback) {
if (typeof callback !== 'function') {
    throw new Error('Not a valid callback for async script load');
}
var script = document.createElement('script');
script.onload = callback;
script.src = scriptSrc;
document.head.appendChild(script); }

/* This is the part where you call the above defined function and "calls back" your code which gets executed after the script has loaded */

loadScriptAsync('https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX', function () {
window.dataLayer = window.dataLayer || [];
function gtag() { dataLayer.push(arguments); }
gtag('js', new Date());
gtag('config', 'G-0XLKP12EJF', { 'anonymize_ip': true }); })