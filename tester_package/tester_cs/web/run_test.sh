# $1: browser type(chrome, firefox)
# $2: name of top of build tree

if [ "$1" = "chrome" ]; then  
    cp /home/web/settings/test_setting.chrome.xml /home/build/$2/*/test_setting.xml
elif [ "$1" = "firefox" ]; then  
    cp /home/web/settings/test_setting.firefox.xml /home/build/$2/*/test_setting.xml
else
    exit 2
fi

cd /home/build/$2 \
    && dotnet build \
    && dotnet test \

