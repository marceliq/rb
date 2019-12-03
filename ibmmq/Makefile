# $NetBSD$

DISTNAME=	9.1.3.0-IBM-MQC-Redist-LinuxX64
PKGNAME=	ibmmq-client-redist-9.1.3.0
CATEGORIES=	# TODO: add primary category
MASTER_SITES=	https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/messaging/mqdev/redist/

MAINTAINER=	mhnilka@gmail.com
HOMEPAGE=	https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/messaging/mqdev/redist/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

WRKSRC=		${WRKDIR} # More than one possibility -- please check manually.

IBMMQ_ENV=	genmqpkg_inc32=0 genmqpkg_incnls=0 genmqpkg_inccpp=0 genmqpkg_inccbl=0 genmqpkg_inctls=1 genmqpkg_incams=1 genmqpkg_inccics=1 genmqpkg_incadm=1 genmqpkg_incras=1 genmqpkg_incsamp=0 genmqpkg_incsdk=1

NO_CONFIGURE=	yes
NO_BUILD=	yes

do-install:
	env ${IBMMQ_ENV} sh -c 'cd ${WRKSRC}/bin && ./genmqpkg.sh -b ${PREFIX}/ibmmq_client'

# TODO: Migrate MASTER_SITES to PYPI

.include "../../mk/bsd.pkg.mk"
