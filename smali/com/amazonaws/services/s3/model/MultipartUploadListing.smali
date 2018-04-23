.class public Lcom/amazonaws/services/s3/model/MultipartUploadListing;
.super Ljava/lang/Object;
.source "MultipartUploadListing.java"


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

.field private maxUploads:I

.field private multipartUploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private uploadIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

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

    .line 336
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->maxUploads:I

    return v0
.end method

.method public getMultipartUploads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    return-object v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->bucketName:Ljava/lang/String;

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

    .line 348
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->commonPrefixes:Ljava/util/List;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxUploads(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->maxUploads:I

    return-void
.end method

.method public setMultipartUploads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->multipartUploads:Ljava/util/List;

    return-void
.end method

.method public setNextKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextKeyMarker:Ljava/lang/String;

    return-void
.end method

.method public setNextUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->nextUploadIdMarker:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated:Z

    return-void
.end method

.method public setUploadIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->uploadIdMarker:Ljava/lang/String;

    return-void
.end method
