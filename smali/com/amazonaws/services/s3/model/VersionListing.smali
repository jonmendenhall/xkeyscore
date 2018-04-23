.class public Lcom/amazonaws/services/s3/model/VersionListing;
.super Ljava/lang/Object;
.source "VersionListing.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private maxKeys:I

.field private nextKeyMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;

.field private versionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionSummaries:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->maxKeys:I

    return v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextVersionIdMarker()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextVersionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionSummaries:Ljava/util/List;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCommonPrefixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->maxKeys:I

    return-void
.end method

.method public setNextKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextKeyMarker:Ljava/lang/String;

    return-void
.end method

.method public setNextVersionIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->nextVersionIdMarker:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->isTruncated:Z

    return-void
.end method

.method public setVersionIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionIdMarker:Ljava/lang/String;

    return-void
.end method

.method public setVersionSummaries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/VersionListing;->versionSummaries:Ljava/util/List;

    return-void
.end method
