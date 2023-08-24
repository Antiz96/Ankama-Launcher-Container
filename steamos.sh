#!/bin/bash

pkgname="ankama-launcher-container"
prefix="${HOME}/.local"
option="${1}"

case "${option}" in
	install)
		install -Dm 755 "src/script/${pkgname}_rootless.sh" "${prefix}/bin/${pkgname}"
		install -Dm 644 "res/icon/${pkgname}.svg" "${prefix}/share/icons/${pkgname}/${pkgname}.svg"
		install -Dm 644 "res/desktop/${pkgname}_steamos.desktop" "${prefix}/share/applications/${pkgname}.desktop"
		install -Dm 644 README.md "${prefix}/share/doc/${pkgname}/README.md"
		echo "Installation done"
	;;
	uninstall)
		rm -f "${prefix}/bin/${pkgname}"
		rm -rf "${prefix}/share/icons/${pkgname}/"
		rm -f "${prefix}/share/applications/${pkgname}.desktop"
		rm -rf "${prefix}/share/doc/${pkgname}/"
		echo "Uninstallation done"
	;;
	*)
		echo "invalid option"
	;;
esac
