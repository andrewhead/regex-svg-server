# Usage Example

This server will fetch an SVG visualization of a regular expression.  The resulting SVG can be embedded within HTML.  This can be used to dynamically generate visualizations of regular expressions that can be embedded in HTML.

Start the server with:

    node svg_server.js

However, please be responsible and route the SVG server to a local clone of the (Regexper server)[https://github.com/javallone/regexper]:

    node -r localhost:<regexper-port>

Query an SVG for the regular expression with

    curl -i "localhost:8080?pattern=myregex"

Substitute the parameter value `myregex` with your own regular expression.
