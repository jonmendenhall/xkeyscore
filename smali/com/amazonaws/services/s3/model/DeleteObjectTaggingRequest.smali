.class public Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectTaggingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->bucketName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectTaggingRequest;->setVersionId(Ljava/lang/String;)V

    return-object p0
.end method
