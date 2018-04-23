.class public Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetObjectTaggingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->bucketName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->key:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectTaggingRequest;->setVersionId(Ljava/lang/String;)V

    return-object p0
.end method
