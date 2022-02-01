SERVER_NAME="${BOMI_SERVER_NAME:-localhost}"
SERVER_PORT="${BOMI_SERVER_PORT:-4243}"

echo $SERVER_NAME
file="index.html"

awk -v srv_name=$SERVER_NAME -v srv_port=$SERVER_PORT '{gsub(/localhost:4243/, srv_name":"srv_port); print $0}' $file > .tmp && mv .tmp $file;