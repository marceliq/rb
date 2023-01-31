# $NetBSD$

DISTNAME=	gssntlmssp-1.1.0
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=gssapi/}
GITHUB_PROJECT=	gss-ntlmssp
GITHUB_RELEASE=	v1.1.0
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/gssapi/gss-ntlmssp/
COMMENT=	GSSAPI library that implements NTLM authentication
LICENSE=	isc

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes

CONFIGURE_ARGS+=	--with-wbclient=no
CONFIGURE_ARGS+=	--with-manpages=no

.include "../../security/mit-krb5/buildlink3.mk"
.include "../../textproc/libunistring/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
