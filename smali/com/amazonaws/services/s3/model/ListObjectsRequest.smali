.class public Lcom/amazonaws/services/s3/model/ListObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListObjectsRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 143
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    return-object p0
.end method

.method public withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setEncodingType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method
