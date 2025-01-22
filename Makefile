pkgname=ankama-launcher-container

PREFIX ?= /usr/local

.PHONY: all install install-rootless uninstall

all:

install:
	install -Dm 755 "src/${pkgname}.sh" "${DESTDIR}${PREFIX}/bin/${pkgname}"
	install -Dm 644 "res/desktop/${pkgname}.desktop" "${DESTDIR}${PREFIX}/share/applications/${pkgname}.desktop"
	install -Dm 664 "res/icons/${pkgname}.svg" "${DESTDIR}${PREFIX}/share/icons/hicolor/scalable/apps/${pkgname}.svg"
	install -Dm 644 README.md "${DESTDIR}${PREFIX}/share/doc/${pkgname}/README.md"

install-rootless:
	install -Dm 755 "src/${pkgname}_rootless.sh" "${DESTDIR}${PREFIX}/bin/${pkgname}"
	install -Dm 644 "res/desktop/${pkgname}_rootless.desktop" "${DESTDIR}${PREFIX}/share/applications/${pkgname}.desktop"
	install -Dm 664 "res/icons/${pkgname}.svg" "${DESTDIR}${PREFIX}/share/icons/hicolor/scalable/apps/${pkgname}.svg"
	install -Dm 644 README.md "${DESTDIR}${PREFIX}/share/doc/${pkgname}/README.md"

uninstall:
	rm -f "${DESTDIR}${PREFIX}/bin/${pkgname}"
	rm -f "${DESTDIR}${PREFIX}/share/icons/hicolor/scalable/apps/${pkgname}.svg"
	rm -f "${DESTDIR}${PREFIX}/share/applications/${pkgname}.desktop"
	rm -rf "${DESTDIR}${PREFIX}/share/doc/${pkgname}/"
