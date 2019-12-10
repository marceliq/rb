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

CHECK_RELRO_SKIP+=	bin/mq_prometheus
FORTIFY_SUPPORTED=	no

TOOLS_CREATE+=	go
TOOLS_PATH.go=	${GO}
#CHECK_SHLIBS_SUPPORTED=	no

#BUILD_TARGET=           #

LINKER_RPATH_FLAG=	-rpath,
COMPILER_RPATH_FLAG=	-Wl,-rpath,
MAKE_ENV+=		MQ_INSTALLATION_PATH="${BUILDLINK_PREFIX.ibmmq-client-redist}/ibmmq_client"
MAKE_ENV+=		CGO_CFLAGS="-I${BUILDLINK_PREFIX.ibmmq-client-redist}/ibmmq_client/inc"
MAKE_ENV+=		CGO_LDFLAGS_ALLOW="-Wl,-rpath.*"
MAKE_ENV+=		CGO_LDFLAGS="-L${BUILDLINK_PREFIX.ibmmq-client-redist}/ibmmq_client/lib64 ${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.ibmmq-client-redist}/ibmmq_client/lib64"
#MAKE_ENV+=		LDFLAGS="-L${BUILDLINK_PREFIX.ibmmq-client-redist}/ibmmq_client/lib64 ${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.ibmmq-client-redist}/ibmmq_client/lib64"
#MAKE_ENV+=              GOBUILD_FLAGS=

do-build:
	${ECHO} ${MAKE_ENV}
#	cd ${WRKSRC} && \
#	${GO} build -o bin/mq_prometheus cmd/mq_prometheus/*.go

.include "../../lang/go/go-package.mk"
.include "../../rb/ibmmq/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
