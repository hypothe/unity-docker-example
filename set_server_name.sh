SERVER_NAME="${BOMI_SERVER_NAME:-localhost}"
echo $SERVER_NAME
file="index.html"

awk -v awk_var=$SERVER_NAME '{gsub(/localhost/, awk_var); print $0}' $file > .tmp && mv .tmp $file; \