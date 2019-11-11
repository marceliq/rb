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

NO_CONFIGURE=	yes
do-build:
	export genmqpkg_inc32=0
	export genmqpkg_incnls=0   
	export genmqpkg_inccpp=0   
	export genmqpkg_inccbl=0   
	export genmqpkg_inctls=1   
	export genmqpkg_incams=1   
	export genmqpkg_inccics=1 
	export genmqpkg_incadm=1   
	export genmqpkg_incras=1   
	export genmqpkg_incsamp=0 
	export genmqpkg_incsdk=1
	cd ${WRKSRC}/bin && ./genmqpkg.sh

#NO_INSTALL=	yes
# TODO: Migrate MASTER_SITES to PYPI

.include "../../mk/bsd.pkg.mk"
