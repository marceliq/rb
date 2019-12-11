# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.17.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.ibmmq-client-redist?=	build

BUILDLINK_TREE+=	ibmmq-client-redist

.if !defined(IBMMQ_CLIENT_REDIST_BUILDLINK3_MK)
IBMMQ_CLIENT_REDIST_BUILDLINK3_MK:=

BUILDLINK_LIBDIRS.ibmmq-client-redist+=		ibmmq_client/lib64
BUILDLINK_RPATHDIRS.ibmmq-client-redist+=	ibmmq_client/lib64

BUILDLINK_API_DEPENDS.ibmmq-client-redist+=	ibmmq-client-redist>=9.1.4.0
BUILDLINK_PKGSRCDIR.ibmmq-client-redist?=	../../rb/ibmmq
.endif	# IBMMQ_CLIENT_REDIST_BUILDLINK3_MK

BUILDLINK_TREE+=	-ibmmq-client-redist
