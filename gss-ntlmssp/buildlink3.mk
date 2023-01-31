# $NetBSD$

BUILDLINK_TREE+=	gssntlmssp

.if !defined(GSSNTLMSSP_BUILDLINK3_MK)
GSSNTLMSSP_BUILDLINK3_MK:=

# 	BUILDLINK_DEPMETHOD.gssntlmssp?=	build

BUILDLINK_API_DEPENDS.gssntlmssp+=	gssntlmssp>=1.1.0
BUILDLINK_PKGSRCDIR.gssntlmssp?=	../../rb/gss-ntlmssp

.include "../../security/mit-krb5/buildlink3.mk"
.include "../../textproc/libunistring/buildlink3.mk"
.endif	# GSSNTLMSSP_BUILDLINK3_MK

BUILDLINK_TREE+=	-gssntlmssp
