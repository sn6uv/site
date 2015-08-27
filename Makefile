PYTHON3=python3
BROWSER=firefox
TARGET=angus@angusgriffith.com:/var/www/html
URL=angusgriffith.com

test:
	(sleep 1; $(BROWSER) localhost:8000) &
	$(PYTHON3) -m http.server

deploy:
	rsync -az --exclude=.git ./ $(TARGET)
	$(BROWSER) $(URL) &
