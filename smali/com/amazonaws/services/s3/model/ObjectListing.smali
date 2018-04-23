.class public Lcom/amazonaws/services/s3/model/ObjectListing;
.super Ljava/lang/Object;
.source "ObjectListing.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field private marker:Ljava/lang/String;

.field private maxKeys:I

.field private nextMarker:Ljava/lang/String;

.field private objectSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->objectSummaries:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->bucketName:Ljava/lang/String;

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

    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->maxKeys:I

    return v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->objectSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->bucketName:Ljava/lang/String;

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

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->maxKeys:I

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated:Z

    return-void
.end method
