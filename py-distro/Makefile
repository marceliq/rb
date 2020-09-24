# $NetBSD: Makefile,v 1.32 2020/07/03 03:03:18 gutteridge Exp $

DISTNAME=	distro-1.5.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/^py//}
CATEGORIES=	sysutils python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/distro/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/nir0s/distro
COMMENT=	distro provides information about the OS distribution it runs on, such as a reliable machine-readable ID, or version information
LICENSE=	Apache Software License

#EXTRACT_USING=	bsdtar

# XXX is this needed?
#CFLAGS.SunOS+=	-std=c99 -D_XOPEN_SOURCE=600

#CHECK_PORTABILITY_SKIP=	appveyor/get_wheels.sh

#BUILDLINK_API_DEPENDS.gmp+=	gmp>=5.0
#.include "../../devel/gmp/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
