rsync_ver = 3.2.3
rsync_pkg = rsync-$(rsync_ver)

chicken_ver = 5.2.0
chicken_pkg = chicken-$(chicken_ver)
csi = chicken-csi

image_magick_ver = 6.9.12.2
image_magick_pkg = ImageMagick-$(image_magick_ver)

acme_client_conf = etc/acme-client.conf
acme_client_conf_bak = /$(acme_client_conf).bak

httpd_conf = etc/httpd.conf
httpd_conf_bak = /$(httpd_conf).bak

www_dir = var/www
www_bak = /$(www_dir).bak

htdocs_dir = $(www_dir)/htdocs
resources_dir = $(htdocs_dir)/resources
icons_dir = $(resources_dir)/icons

favicon_dir = src/www/resources/icons/favicon
favicon_src = $(favicon_dir)/favicon_64x64.png $(favicon_dir)/favicon_48x48.png $(favicon_dir)/favicon_32x32.png $(favicon_dir)/favicon_24x24.png $(favicon_dir)/favicon_16x16.png
favicon = gen/$(icons_dir)/favicon.ico



.PHONY: all build install start stop uninstall clean test
.PHONY: req_pkg bak_cfg chk_out


all: build

req_pkg:
	if ! pkg_info -e $(rsync_pkg); then echo 'installing $(rsync_pkg)'; doas pkg_add $(rsync_pkg); fi

	if ! pkg_info -e $(chicken_pkg); then echo 'installing $(chicken_pkg)'; doas pkg_add $(chicken_pkg); fi
	if ! chicken-status -c | grep r7rs; then doas chicken-install r7rs; fi
#	if ! chicken-status -c | grep srfi-13; then doas chicken-install srfi-13; fi
	if ! chicken-status -c | grep regex; then doas chicken-install regex; fi
#	if ! chicken-status -c | grep symbol-utils; then doas chicken-install symbol-utils; fi
	if ! chicken-status -c | grep srfi-19; then doas chicken-install srfi-19; fi

	if ! pkg_info -e $(image_magick_pkg); then echo 'installing $(image_magick_pkg)'; doas pkg_add $(image_magick_pkg); fi


build: req_pkg bak_cfg chk_out $(favicon)
	mkdir -p gen/etc gen/var gen/var/www/htdocs/resources/images
	mkdir -p gen/etc gen/var gen/var/www/htdocs/resources/fonts

	rsync -a src/www/config/etc/ gen/etc/
	rsync -a src/www/config/var/ gen/var/
	rsync -a --exclude="_design" src/www/resources/images/ gen/var/www/htdocs/resources/images/

	rsync -a src/www/resources/fonts/*webfont.* gen/var/www/htdocs/resources/fonts/

	rsync -a src/www/resources/scripts/*.js gen/var/www/htdocs/resources/scripts/

	$(csi) -keyword-style none -s src/build-config.scm
	$(csi) -keyword-style none -s src/build-pages.scm
	$(csi) -keyword-style none -s src/build-styles.scm


install: stop
	doas rsync -rt gen/etc/ /etc/

	doas rsync -rt --delete gen/var/www/ /var/www/

	doas rcctl enable httpd


start: 
	doas rcctl restart httpd


stop: 
	doas rcctl stop httpd


uninstall: stop
	doas rcctl disable httpd

	doas rm -rf /$(www_dir)
	if [ -d "$(www_bak)" ]; then doas mv $(www_bak) /$(www_dir); fi

	doas rm -f /$(acme_client_conf)
	if [ -f "$(acme_client_conf_bak)" ]; then doas mv $(acme_client_conf_bak) /$(acme_client_conf); fi

	doas rm -f /$(httpd_conf)
	if [ -f "$(httpd_conf_bak)" ]; then doas mv $(httpd_conf_bak) /$(httpd_conf); fi


clean: 
	rm -rf gen




bak_cfg: $(httpd_conf_bak) $(www_bak) $(acme_client_conf_bak)


$(acme_client_conf_bak):
	if [ -f "/$(acme_client_conf)" ]; then echo "backing up /$(acme_client_conf)..."; doas rsync -a /$(acme_client_conf) $(acme_client_conf_bak); fi

$(httpd_conf_bak):
	if [ -f "/$(httpd_conf)" ]; then echo "backing up /$(httpd_conf)..."; doas rsync -a /$(httpd_conf) $(httpd_conf_bak); fi

$(www_bak):
	if [ -d "/$(www_dir)" ]; then echo "backing up /$(www_dir)..."; doas rsync -a /$(www_dir)/ $(www_bak); fi


chk_out:
	echo "checking out repositories..."
	mkdir -p "gen/repo/pose.repo"
	mkdir -p "gen/repo/s-mark.repo"
	mkdir -p "gen/repo/twinjo.repo"


$(favicon):
	echo "building favicon..."
	mkdir -p gen/$(icons_dir)
	convert -background transparent $(favicon_src) $(favicon)
	rsync -a $(favicon_dir)/*.png gen/$(icons_dir)/
