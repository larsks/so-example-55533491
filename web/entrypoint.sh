#!/bin/sh

mkdir -p /srv/web
cat <<EOF > /srv/web/index.html
<html>
<head>
<title>$(hostname)</title>
</head>
<body>
<h1>$(hostname)</h1>
<pre>
Version: 1
</pre>

<h2>Network configuration</h2>
<pre>
$(ip addr show)
</pre>

<h2>Environment</h2>
<pre>
$(env)
</pre>
</body>
</html>
EOF

exec "$@"
