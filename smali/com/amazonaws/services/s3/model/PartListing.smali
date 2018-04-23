.class public Lcom/amazonaws/services/s3/model/PartListing;
.super Ljava/lang/Object;
.source "PartListing.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private abortDate:Ljava/util/Date;

.field private abortRuleId:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private initiator:Lcom/amazonaws/services/s3/model/Owner;

.field private isRequesterCharged:Z

.field private isTruncated:Z

.field private key:Ljava/lang/String;

.field private maxParts:Ljava/lang/Integer;

.field private nextPartNumberMarker:Ljava/lang/Integer;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field private partNumberMarker:Ljava/lang/Integer;

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation
.end field

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbortDate()Ljava/util/Date;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->abortDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAbortRuleId()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->abortRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiator()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxParts()Ljava/lang/Integer;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->maxParts:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->nextPartNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getPartNumberMarker()Ljava/lang/Integer;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->partNumberMarker:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->isRequesterCharged:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/PartListing;->isTruncated:Z

    return v0
.end method

.method public setAbortDate(Ljava/util/Date;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->abortDate:Ljava/util/Date;

    return-void
.end method

.method public setAbortRuleId(Ljava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->abortRuleId:Ljava/lang/String;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setInitiator(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->key:Ljava/lang/String;

    return-void
.end method

.method public setMaxParts(I)V
    .locals 0

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->maxParts:Ljava/lang/Integer;

    return-void
.end method

.method public setNextPartNumberMarker(I)V
    .locals 0

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->nextPartNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setPartNumberMarker(I)V
    .locals 0

    .line 252
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->partNumberMarker:Ljava/lang/Integer;

    return-void
.end method

.method public setParts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;)V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->parts:Ljava/util/List;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->isRequesterCharged:Z

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->isTruncated:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/PartListing;->uploadId:Ljava/lang/String;

    return-void
.end method
