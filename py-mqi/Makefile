# $NetBSD$

DISTNAME=	pymqi-1.9.2
CATEGORIES=	python # TODO: add primary category
MASTER_SITES=	https://files.pythonhosted.org/packages/15/d9/b5babbd3f296b47a9d8bca417ca185ede9e8780ce4ca6b66bbf2dd1b7880/

MAINTAINER=	mhnilka@gmail.com
HOMEPAGE=	https://files.pythonhosted.org/packages/15/d9/b5babbd3f296b47a9d8bca417ca185ede9e8780ce4ca6b66bbf2dd1b7880/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

CFLAGS=	-I${PREFIX}/mqclient/inc
do-build:
	export PATH=${PREFIX}/mqclient/bin:$$PATH
	cd ${WRKSRC} && ${PREFIX}/bin/python3.7 setup.py build_ext -I${PREFIX}/mqclient/inc

# TODO: Migrate MASTER_SITES to PYPI
.include "../../mk/bsd.pkg.mk"
