#!/bin/bash

cat << EOF
<html>
<body>
<h1>Istio helm charts</h1>
<h2>Installation</h2>
<p>
<pre>
helm repo add e-2 https://e-2.github.io/istio-charts/
helm install e-2/certificate
</pre>
</p>
<h2>Available versions</h2>
<ul>
EOF

grep index.yaml -e "version:" | awk -F': ' '{print "<li>"$2"</li>"}' | sort -n -r

cat << EOF
</ul>
</body>
</html>
EOF

