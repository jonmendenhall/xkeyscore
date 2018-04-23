.class public Lcom/amazonaws/services/s3/model/ListVersionsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListVersionsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private maxResults:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 184
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setBucketName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setPrefix(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setKeyMarker(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setVersionIdMarker(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p6}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setMaxResults(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Integer;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setKeyMarker(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->keyMarker:Ljava/lang/String;

    return-void
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->maxResults:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setVersionIdMarker(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->versionIdMarker:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setDelimiter(Ljava/lang/String;)V

    return-object p0
.end method

.method public withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setEncodingType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setKeyMarker(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setMaxResults(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method

.method public withVersionIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListVersionsRequest;
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListVersionsRequest;->setVersionIdMarker(Ljava/lang/String;)V

    return-object p0
.end method
