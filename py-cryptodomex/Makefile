# $NetBSD: Makefile,v 1.53 2024/01/12 13:15:47 adam Exp $

DISTNAME=	pycryptodomex-3.23.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/^py//}
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pycryptodomex/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pycryptodome.org/
COMMENT=	Cryptographic and hash functions for Python
LICENSE=	public-domain AND python-software-foundation

# "error: 'for' loop initial declarations are only allowed in C99 mode"
FORCE_C_STD=	c99

# XXX is this needed?
CFLAGS.SunOS+=	-D_XOPEN_SOURCE=600

CHECK_PORTABILITY_SKIP=	appveyor/get_wheels.sh

.include "../../lang/python/egg.mk"

# Python 3 builds of this package get an extra "abi3" suffix added
.if ${PYTHON_VERSION} < 300
PLIST_SUBST+=	SOEXT="so"
.else
PLIST_SUBST+=	SOEXT="abi3.so"
.endif

BUILDLINK_API_DEPENDS.gmp+=	gmp>=5.0
.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
