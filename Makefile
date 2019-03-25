PACKAGE_VERSION=`git describe --always --dirty --tags`
PACKAGE_NAME=pkgfoo
ARCHITECTURE=amd64
PREFIX=/opt/fpm

deb: 
	/usr/local/bin/fpm -s dir -t deb --deb-no-default-config-files -v $(PACKAGE_VERSION) -n $(PACKAGE_NAME) -a $(ARCHITECTURE) -C $(PREFIX) .
