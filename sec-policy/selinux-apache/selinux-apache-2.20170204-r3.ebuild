# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="6"

IUSE=""
MODS="apache"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for apache"

if [[ ${PV} != 9999* ]] ; then
	KEYWORDS="amd64 ~arm ~arm64 ~mips x86"
fi
DEPEND="${DEPEND}
	sec-policy/selinux-kerberos
"
RDEPEND="${RDEPEND}
	sec-policy/selinux-kerberos
"
