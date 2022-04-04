# $NetBSD$

GITHUB_PROJECT=	mod_auth_gssapi
DISTNAME=	v1.6.3
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_GITHUB:=modauthgssapi/}
DIST_SUBDIR=	${GITHUB_PROJECT}


MAINTAINER=	mhnilka@trask.cz
HOMEPAGE=	https://github.com/modauthgssapi/mod_auth_gssapi/
COMMENT=	GSSAPI auth module for Apache httpd
LICENSE=	apache-2.0


PKG_APACHE_ACCEPTED=	apache24

APACHE_MODULE=          yes

WRKSRC=		${WRKDIR}/mod_auth_gssapi-1.6.3

GNU_CONFIGURE=  yes
USE_LIBTOOL=    yes
USE_TOOLS+=     gmake
USE_TOOLS+=     automake
USE_TOOLS+=     pkg-config

APACHE_MODULE_SRCDIR=	${WRKSRC}/src
APACHE_MODULE_NAME=	mod_auth_gssapi.so

#CONFIGURE_ARGS+=	--with-apxs=${LOCALBASE}/bin/apxs
#CONFIGURE_ARGS-=	--with-apxs2
#CONFIGURE_ARGS+=	--with-apr=${LOCALBASE}/bin/apr-1-config
CONFIGURE_ARGS+=	--with-apxs2=${APXS}

pre-configure:
	cd ${WRKSRC} && autoreconf -fi

SUBST_CLASSES+=		asn1c-lt
SUBST_STAGE.asn1c-lt=	post-configure
SUBST_FILES.asn1c-lt=	Makefile src/Makefile src/asn1c/Makefile
SUBST_SED.asn1c-lt=	-e "s|^\\(LIBTOOL *=\\).*\$$|\\1 \$$(SHELL) \$$(top_builddir)/libtool|g"
SUBST_MESSAGE.asn1c-lt=	Fixing libtool references.


INSTALLATION_DIRS+=	lib/httpd

do-install:
	${INSTALL_LIB} ${WRKSRC}/src/.libs/mod_auth_gssapi.so \
	    ${DESTDIR}${PREFIX}/lib/httpd

.include "../../rb/mk/apache.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../security/mit-krb5/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
