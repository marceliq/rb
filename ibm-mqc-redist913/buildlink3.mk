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
# XXX	BUILDLINK_DEPMETHOD.ibm-mqc-redist?=	build

BUILDLINK_TREE+=	ibm-mqc-redist

.if !defined(IBM_MQC_REDIST_BUILDLINK3_MK)
IBM_MQC_REDIST_BUILDLINK3_MK:=

BUILDLINK_LIBDIRS.ibm-mqc-redist+=         ibm-mqc-redist/lib64
BUILDLINK_RPATHDIRS.ibm-mqc-redist+=       ibm-mqc-redist/lib64

BUILDLINK_API_DEPENDS.ibm-mqc-redist+=	ibm-mqc-redist>=9.1.3.0
BUILDLINK_PKGSRCDIR.ibm-mqc-redist?=	../../rb/ibm-mqc-redist913
.endif	# IBM_MQC_REDIST_BUILDLINK3_MK

BUILDLINK_TREE+=	-ibm-mqc-redist
