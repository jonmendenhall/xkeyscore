.class public Lcom/amazonaws/services/s3/model/SetObjectAclRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetObjectAclRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acl:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private final bucketName:Ljava/lang/String;

.field private final cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

.field private isRequesterPays:Z

.field private final key:Ljava/lang/String;

.field private final versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->bucketName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->key:Ljava/lang/String;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->versionId:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->acl:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->bucketName:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->key:Ljava/lang/String;

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->versionId:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->acl:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 90
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->bucketName:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->key:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->versionId:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->acl:Lcom/amazonaws/services/s3/model/AccessControlList;

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->bucketName:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->key:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->versionId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->acl:Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 140
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-void
.end method


# virtual methods
.method public getAcl()Lcom/amazonaws/services/s3/model/AccessControlList;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->acl:Lcom/amazonaws/services/s3/model/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->cannedAcl:Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->isRequesterPays:Z

    return v0
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->isRequesterPays:Z

    return-void
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/SetObjectAclRequest;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SetObjectAclRequest;->setRequesterPays(Z)V

    return-object p0
.end method
