.class public Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListObjectsV2Request.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private continuationToken:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private fetchOwner:Z

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;

.field private startAfter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAfter()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->startAfter:Ljava/lang/String;

    return-object v0
.end method

.method public isFetchOwner()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->fetchOwner:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContinuationToken(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->continuationToken:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setFetchOwner(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->fetchOwner:Z

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->maxKeys:Ljava/lang/Integer;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setStartAfter(Ljava/lang/String;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->startAfter:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContinuationToken(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setContinuationToken(Ljava/lang/String;)V

    return-object p0
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setDelimiter(Ljava/lang/String;)V

    return-object p0
.end method

.method public withEncodingType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setEncodingType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withFetchOwner(Z)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setFetchOwner(Z)V

    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setMaxKeys(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStartAfter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsV2Request;
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ListObjectsV2Request;->setStartAfter(Ljava/lang/String;)V

    return-object p0
.end method
