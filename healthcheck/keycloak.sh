exec 3<>/dev/tcp/127.0.0.1/9000
echo -e 'GET /health/ready HTTP/1.1\r\nhost: http://localhost\r\nConnection: close\r\n\r\n' >&3
if [ $? -eq 0 ]; then
  echo 'Healthcheck Successful'
  exit 0
else
  echo 'Healthcheck Failed'
  exit 1
fi
