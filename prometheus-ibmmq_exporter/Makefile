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
GO_BUILD_PATTERN=	${GO_SRCPATH}/cmd/mq_prometheus

TOOLS_CREATE+=	go
TOOLS_PATH.go=	${GO}

MAKE_ENV+=		MQ_INSTALLATION_PATH="${BUILDLINK_PREFIX.ibmmq-client-redist}"
MAKE_ENV+=		CGO_CFLAGS="-I${BUILDLINK_PREFIX.ibmmq-client-redist}/inc"
MAKE_ENV+=		CGO_LDFLAGS_ALLOW="-Wl,-rpath.*"
MAKE_ENV+=		CGO_LDFLAGS="-L${BUILDLINK_PREFIX.ibmmq-client-redist}/lib64 ${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.ibmmq-client-redist}/lib64"

#do-build:
#	cd ${WRKSRC} && \
#	${GO} build -o bin/mq_prometheus cmd/mq_prometheus/*.go

.include "../../lang/go/go-package.mk"
.include "../../rb/ibmmq/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
