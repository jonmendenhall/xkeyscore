.class public Lcom/amazonaws/services/s3/model/CopyPartResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "CopyPartResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModifiedDate:Ljava/util/Date;

.field private partNumber:I

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPartETag()Lcom/amazonaws/services/s3/model/PartETag;
    .locals 3

    .line 93
    new-instance v0, Lcom/amazonaws/services/s3/model/PartETag;

    iget v1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->partNumber:I

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->etag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->partNumber:I

    return v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->lastModifiedDate:Ljava/util/Date;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->partNumber:I

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CopyPartResult;->versionId:Ljava/lang/String;

    return-void
.end method
