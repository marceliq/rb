# $NetBSD$

GITHUB_PROJECT=	mq-metric-samples
GITHUB_TAG=	v4.1.2
DISTNAME=	v4.1.2
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME:S,^v,,}
CATEGORIES=	rb
MASTER_SITES=	${MASTER_SITE_GITHUB:=ibm-messaging/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	mhnilka@gmail.cz
HOMEPAGE=	https://github.com/ibm-messaging/mq-metric-samples/
COMMENT=	IBM MQ exporter for Prometheus
#LICENSE=	# TODO: (see mk/license.mk)

GO_DIST_BASE=	${PKGBASE}-${GITHUB_TAG:S/v//}
GO_SRCPATH=	github.com/ibm-messaging/mq-metric-samples
GO_BUILD_PATTERN=	${GO_SRCPATH}/cmd/mq_prometheus/...


FORTIFY_SUPPORTED=	no

USE_TOOLS+=	chrpath
TOOLS_CREATE+=	go
TOOLS_PATH.go=	${GO}

BUILD_TARGET=           #

MAKE_ENV+=	MQ_INSTALLATION_PATH="${BUILDLINK_PREFIX.ibm-mqc-redist}/ibm-mqc-redist"
MAKE_ENV+=	CGO_CFLAGS="-I${BUILDLINK_PREFIX.ibm-mqc-redist}/ibm-mqc-redist/inc"
MAKE_ENV+=	CGO_LDFLAGS_ALLOW="-Wl,-.*"
MAKE_ENV+=	CGO_LDFLAGS="-Wl,--strip-all -L${BUILDLINK_PREFIX.ibm-mqc-redist}/ibm-mqc-redist/lib64 -Wl,-rpath,${BUILDLINK_PREFIX.ibm-mqc-redist}/ibm-mqc-redist/lib64"
MAKE_ENV+=	GOBUILD_FLAGS=

post-build:
	${TOOLS_PATH.chrpath} -cr '$$ORIGIN/../ibm-mqc-redist/lib64' ${WRKDIR}/bin/mq_prometheus

.include "../../lang/go/go-package.mk"
.include "../../rb/ibm-mqc-redist/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
