rsync_ver = 3.2.3
rsync_pkg = rsync-$(rsync_ver)

chicken_ver = 5.2.0
chicken_pkg = chicken-$(chicken_ver)
csi = chicken-csi

image_magick_ver = 6.9.12.2
image_magick_pkg = ImageMagick-$(image_magick_ver)


nsd_conf = var/nsd/etc/nsd.conf
nsd_conf_bak = /$(nsd_conf).bak

zones_dir = var/nsd/zones
zones_bak = /$(zones_dir).bak


acme_client_conf = etc/acme-client.conf
acme_client_conf_bak = /$(acme_client_conf).bak

httpd_conf = etc/httpd.conf
httpd_conf_bak = /$(httpd_conf).bak

www_dir = var/www
www_bak = /$(www_dir).bak

htdocs_dir = $(www_dir)/htdocs
resources_dir = $(htdocs_dir)/resources
icons_dir = $(resources_dir)/icons

favicon_dir = content/resources/icons/favicon
favicon_src = $(favicon_dir)/favicon_64x64.png $(favicon_dir)/favicon_48x48.png $(favicon_dir)/favicon_32x32.png $(favicon_dir)/favicon_24x24.png $(favicon_dir)/favicon_16x16.png
favicon = gen/$(icons_dir)/favicon.ico



.PHONY: all build install start stop uninstall clean test
.PHONY: bak_cfg chk_out


all: build

build: bak_cfg chk_out $(favicon)
	if ! pkg_info -e $(chicken_pkg); then echo 'installing $(chicken_pkg)'; doas pkg_add $(chicken_pkg); fi
	if ! chicken-status -c | grep r7rs; then doas chicken-install r7rs; fi
#	if ! chicken-status -c | grep srfi-13; then doas chicken-install srfi-13; fi
	if ! chicken-status -c | grep regex; then doas chicken-install regex; fi

	mkdir -p gen/etc gen/var
	rsync -a config/etc/ gen/etc/
	rsync -a config/var/ gen/var/

	$(csi) -s build/build-all.scm


install: stop
	if ! pkg_info -e $(rsync_pkg); then echo 'installing $(rsync_pkg)'; doas pkg_add $(rsync_pkg); fi

	doas rsync -rt gen/etc/ /etc/

	doas rsync -rt --delete gen/var/www/ /var/www/

	doas rsync -rt gen/var/nsd/etc/ /var/nsd/etc/
	doas rsync -rt gen/var/nsd/zones /var/nsd/


	doas rcctl enable httpd
	doas rcctl enable nsd

start: 
	doas rcctl restart httpd
	doas rcctl restart nsd


stop: 
	doas rcctl stop httpd
	doas rcctl stop nsd

uninstall: stop
	doas rcctl disable httpd
	doas rcctl disable nsd

	doas rm -rf /$(www_dir)
	if [ -d "$(www_bak)" ]; then doas mv $(www_bak) /$(www_dir); fi

	doas rm -rf /$(zones_dir)
	if [ -d "$(zones_bak)" ]; then doas mv $(zones_bak) /$(zones_dir); fi

	doas rm -f /$(acme_client_conf)
	if [ -f "$(acme_client_conf_bak)" ]; then doas mv $(acme_client_conf_bak) /$(acme_client_conf); fi

	doas rm -f /$(httpd_conf)
	if [ -f "$(httpd_conf_bak)" ]; then doas mv $(httpd_conf_bak) /$(httpd_conf); fi

	doas rm -f /$(nsd_conf)
	if doas [ -f "$(nsd_conf_bak)" ]; then doas mv $(nsd_conf_bak) /$(nsd_conf); fi


clean: 
	rm -rf gen




bak_cfg: $(httpd_conf_bak) $(www_bak) $(zones_bak) $(acme_client_conf_bak)
	if doas [ -f "$/(nsd_conf)" ] && doas [ ! -f "$(nsd_conf_bak)" ] ; then echo "backing up /$(nsd_conf)..."; doas rsync -a /$(nsd_conf) $(nsd_conf_bak); fi

$(zones_bak):
	if [ -d "/$(zones_dir)" ]; then echo "backing up /$(zones_dir)..."; doas rsync -a /$(zones_dir)/ $(zones_bak); fi


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
	if ! pkg_info -e $(image_magick_pkg); then echo 'installing $(image_magick_pkg)'; doas pkg_add $(image_magick_pkg); fi
	mkdir -p gen/$(icons_dir)
	convert -background transparent $(favicon_src) $(favicon)


