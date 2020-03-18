install:
	cp io.github.deryrahman.forex.usdidr.plist ~/Library/LaunchAgents/io.github.deryrahman.forex.usdidr.plist
	cp usdidr_watcher /usr/local/bin/usdidr_watcher
	chmod +x /usr/local/bin/usdidr_watcher
start:
	launchctl load ~/Library/LaunchAgents/io.github.deryrahman.forex.usdidr.plist
stop:
	launchctl unload ~/Library/LaunchAgents/io.github.deryrahman.forex.usdidr.plist
uninstall: stop
	rm ~/Library/LaunchAgents/io.github.deryrahman.forex.usdidr.plist
	rm /usr/local/bin/usdidr_watcher
