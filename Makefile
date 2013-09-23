all: clean
	@mkdir -p build/etc/profile.d
	@mkdir -p build/usr/sbin
	@cp inittab build/etc
	@cp projectmonitor-config build/usr/sbin
	@cp run-projectmonitor-config.sh build/etc/profile.d
	@cp -r debian build/DEBIAN
	@dpkg-deb --build build
	@mv build.deb `dpkg-deb -f build.deb Package`-`dpkg-deb -f build.deb Version`.deb

clean:
	@rm -rf build
	@rm -f projectmonitor-config*.deb
  


  
