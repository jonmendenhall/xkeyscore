.class public Lcom/amazonaws/services/s3/model/CopyObjectResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "CopyObjectResult.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/S3VersionResult;
.implements Ljava/io/Serializable;


# instance fields
.field private etag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private lastModifiedDate:Ljava/util/Date;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->isRequesterCharged:Z

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->expirationTimeRuleId:Ljava/lang/String;

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->lastModifiedDate:Ljava/util/Date;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->isRequesterCharged:Z

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyObjectResult;->versionId:Ljava/lang/String;

    return-void
.end method
