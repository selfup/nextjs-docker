ab \
  -n 100000 \
  -c 50 \
  -k -v 1 \
  -H "Accept-Encoding: gzip, deflate" \
  -T "application/json" \
  http://localhost:8080/ > .results \
