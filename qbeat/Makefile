# $NetBSD$

DISTNAME=       qbeat-0.0.1
GITHUB_PROJECT= qbeat
CATEGORIES=     # TODO: add primary category
MASTER_SITES=   ${MASTER_SITE_GITHUB:=felix-lessoer/}
DIST_SUBDIR=    ${GITHUB_PROJECT}
GITHUB_TAG=     b4ceddc9a38c45f68e1061d130ca516a7c616fe3

MAINTAINER=	INSERT_YOUR_MAIL_ADDRESS_HERE
HOMEPAGE=	https://github.com/felix-lessoer/qbeat/
COMMENT=	TODO: Short description of the package
#LICENSE=	# TODO: (see mk/license.mk)

USE_TOOLS+=             gmake

GO_DIST_BASE=           ${PKGBASE}-${GITHUB_TAG:S/v//}
GO_SRCPATH=             github.com/felix-lessoer/qbeat

TOOLS_CREATE+=          go
TOOLS_PATH.go=          ${GO}

.include "../../mk/bsd.prefs.mk"

WRKSRC=		${WRKDIR}/qbeat-b4ceddc9a38c45f68e1061d130ca516a7c616fe3
USE_LANGUAGES=	# none
# TODO: Migrate MASTER_SITES to PYPI

.include "../../lang/go/go-package.mk"
.include "../../mk/bsd.pkg.mk"
