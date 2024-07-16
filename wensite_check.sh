#!/bin/bash
website="https://example.com"
# Check if website is accessible
if curl --output /dev/null --silent --head --fail "$website"; then
echo "Website is up."
else
echo "Website is down."
fi

<<arun
curl: curl is a command-line tool for transferring data with URLs. In this case, it's used to fetch headers from a website without downloading the actual content.

--output /dev/null: Specifies that the output of the curl command should be redirected to /dev/null, discarding any downloaded content. We're interested only in the HTTP response headers, not the page content itself.

--silent (or -s): Prevents curl from showing progress or error messages. It makes curl operate in silent mode.

--head: Uses the HTTP HEAD method instead of GET. This means curl will only fetch headers and not the entire content of the webpage.

--fail: Instructs curl to return an error status code if the HTTP request fails or the server returns an error status (e.g., 4xx or 5xx). Without this option, curl may return success even for non-200 status codes.

"$website": This is a variable containing the URL of the website you want to check
arun
