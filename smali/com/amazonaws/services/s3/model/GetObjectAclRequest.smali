.class public Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectAclRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isRequesterPays:Z

.field private s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setBucketName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setKey(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setVersionId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getBucket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getVersionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->setBucket(Ljava/lang/String;)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->isRequesterPays:Z

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->s3ObjectIdBuilder:Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method public withBucket(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectAclRequest;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectAclRequest;->setVersionId(Ljava/lang/String;)V

    return-object p0
.end method
