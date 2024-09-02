PORTNAME=	v2ray_exporter

DISTVERSION=	0.6.2
CATEGORIES=	sysutils

MAINTAINER=	kibab@FreeBSD.org
COMMENT=	V2Ray / XRay Prometheus metrics exporter
WWW=		https://github.com/wi1dcard/v2ray-exporter

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GITHUB=	yes
GO_MOD_DIST=	https://raw.githubusercontent.com/wi1dcard/v2ray-exporter/master/
GH_ACCOUNT=	wi1dcard
GH_PROJECT=	v2ray-exporter
GH_TAGNAME=	7d35bded

USES=		go:1.22,modules
USE_RC_SUBR=	v2ray_exporter

GO_MODULE=	github.com/wi1dcard/v2ray-exporter
GO_BUILDFLAGS=	-v -ldflags "${LD_FLAG_STRING}"

LD_FLAG_STRING=	-s \
		${LD_FLAG_X_PREFIX}.buildVersion=${PORTVERSION}

LD_FLAG_X_PREFIX=	-X main

.include <bsd.port.mk>
