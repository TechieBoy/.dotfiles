# Create plugin folders if they don't exist
mkdir -p $ZSHDIR/plugins
mkdir -p $ZSHDIR/standalone

# Source files if they exist, path relative to $ZSHDIR
function source_file() {
    [ -f "$ZSHDIR/$1" ] && source "$ZSHDIR/$1"
}

# Add a github repo as plugin
function zadd_plugin() {
    PLUGIN_NAME=$(basename $1)
    if [ -d "$ZSHDIR/plugins/$PLUGIN_NAME" ]; then 
        source_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        source_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZSHDIR/plugins/$PLUGIN_NAME"
        # Run post install if 2nd argument given
        [ ! -z "$2" ] && eval "$2"
        # Add to uninstall script if 3rd argument given
        [ ! -z "$3" ] && echo -e "$3" >> $ZSHDIR/uninstall.sh
    fi
}

# Sources a standalone zsh file from given url
function zadd_standalone() {
    FILE_NAME=$(basename $1)
    if [ -f "$ZSHDIR/standalone/$FILE_NAME" ]; then 
        source_file "standalone/$FILE_NAME"
    else
        wget -N "$1" -P "$ZSHDIR/standalone"
    fi
}
# Deletes all plugins
# Use this functino to "Update" all plugins, by deleting all of them and restarting terminal
# This is a good metric to judge whether zsh is too bloated
# If this is taking too long, it's time to remove some plugins
function zclear() {
    echo "Deleting all installed plugins..."
    [ -f $ZSHDIR/uninstall.sh ] && chmod +x $ZSHDIR/uninstall.sh && $ZSHDIR/uninstall.sh
    rm -rf $ZSHDIR/plugins
    rm -rf $ZSHDIR/standalone
    rm -rf $ZSHDIR/uninstall.sh
}

