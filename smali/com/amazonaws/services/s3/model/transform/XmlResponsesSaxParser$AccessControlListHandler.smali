.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessControlListHandler"
.end annotation


# instance fields
.field private final accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

.field private currentPermission:Lcom/amazonaws/services/s3/model/Permission;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1041
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 1043
    new-instance v0, Lcom/amazonaws/services/s3/model/AccessControlList;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/AccessControlList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    const/4 v0, 0x0

    .line 1046
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    .line 1047
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    return-void
.end method


# virtual methods
.method protected doEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "AccessControlPolicy"

    const-string p3, "Owner"

    .line 1091
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ID"

    .line 1092
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1093
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getOwner()Lcom/amazonaws/services/s3/model/Owner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "DisplayName"

    .line 1094
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1095
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getOwner()Lcom/amazonaws/services/s3/model/Owner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "AccessControlPolicy"

    const-string p3, "AccessControlList"

    .line 1099
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Grant"

    .line 1100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1101
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {p1, p2, p3}, Lcom/amazonaws/services/s3/model/AccessControlList;->grantPermission(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    const/4 p1, 0x0

    .line 1104
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    .line 1105
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    goto/16 :goto_0

    :cond_2
    const-string p1, "AccessControlPolicy"

    const-string p3, "AccessControlList"

    const-string v0, "Grant"

    .line 1109
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Permission"

    .line 1110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1111
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/model/Permission;->parsePermission(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/amazonaws/services/s3/model/Permission;

    goto :goto_0

    :cond_3
    const-string p1, "AccessControlPolicy"

    const-string p3, "AccessControlList"

    const-string v0, "Grant"

    const-string v1, "Grantee"

    .line 1115
    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ID"

    .line 1116
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1117
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/model/Grantee;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "EmailAddress"

    .line 1119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1120
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/model/Grantee;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "URI"

    .line 1122
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1128
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/model/GroupGrantee;->parseGroupGrantee(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    :cond_6
    const-string p1, "DisplayName"

    .line 1130
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1131
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    check-cast p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    .line 1132
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->setDisplayName(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected doStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string p1, "AccessControlPolicy"

    .line 1063
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Owner"

    .line 1064
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1065
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    new-instance p2, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AccessControlList;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    goto :goto_0

    :cond_0
    const-string p1, "AccessControlPolicy"

    const-string p3, "AccessControlList"

    const-string v0, "Grant"

    .line 1070
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->in([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Grantee"

    .line 1071
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "xsi:type"

    .line 1073
    invoke-static {p1, p4}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmazonCustomerByEmail"

    .line 1075
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1076
    new-instance p1, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    invoke-direct {p1, p3}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    :cond_1
    const-string p2, "CanonicalUser"

    .line 1077
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1078
    new-instance p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    invoke-direct {p1, p3}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    :cond_2
    const-string p2, "Group"

    .line 1079
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method
