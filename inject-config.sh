PREFIX="JS_BUNDLE_RUNTIME_CONFIG_"
CONFIG_JSON=$(jo $(env | grep "$PREFIX" | cut -c $(expr ${#PREFIX} + 1)-))
sed -i "s/{{ JS_BUNDLE_RUNTIME_CONFIG }}/$CONFIG_JSON/" /usr/share/nginx/html/index.html
