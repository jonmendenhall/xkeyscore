.class public Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GeneratePresignedUrlRequest.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/SSECustomerKeyProvider;
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private contentMd5:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private expiration:Ljava/util/Date;

.field private key:Ljava/lang/String;

.field private kmsCmkId:Ljava/lang/String;

.field private method:Lcom/amazonaws/HttpMethod;

.field private final requestParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

.field private sseAlgorithm:Ljava/lang/String;

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private zeroByteContent:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 188
    sget-object v0, Lcom/amazonaws/HttpMethod;->GET:Lcom/amazonaws/HttpMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/HttpMethod;)V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-void
.end method


# virtual methods
.method public addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMd5()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKmsCmkId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->kmsCmkId:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/amazonaws/HttpMethod;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-object v0
.end method

.method public getRequestParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->requestParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-object v0
.end method

.method public getSSEAlgorithm()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-object v0
.end method

.method public isZeroByteContent()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->zeroByteContent:Z

    return v0
.end method

.method public rejectIllegalArguments()V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The bucket name parameter must be specified when generating a pre-signed URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    if-nez v0, :cond_1

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The HTTP method request parameter must be specified when generating a pre-signed URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either SSE or SSE-C can be specified but not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->kmsCmkId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KMS CMK is not applicable for SSE-C"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->kmsCmkId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 616
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For KMS server side encryption, the SSE algorithm must be set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setContentMd5(Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->expiration:Ljava/util/Date;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setKmsCmkId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->kmsCmkId:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Lcom/amazonaws/HttpMethod;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->method:Lcom/amazonaws/HttpMethod;

    return-void
.end method

.method public setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->responseHeaders:Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    return-void
.end method

.method public setSSEAlgorithm(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSSEAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method

.method public setSSECustomerKeyAlgorithm(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 552
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->generateSSECustomerKeyForPresignUrl(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    :goto_0
    return-void

    .line 557
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently the only supported Server Side Encryption algorithm is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZeroByteContent(Z)V
    .locals 0

    .line 583
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->zeroByteContent:Z

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withContentMd5(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->contentMd5:Ljava/lang/String;

    return-object p0
.end method

.method public withContentType(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withExpiration(Ljava/util/Date;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setExpiration(Ljava/util/Date;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 325
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKmsCmkId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setKmsCmkId(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMethod(Lcom/amazonaws/HttpMethod;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setMethod(Lcom/amazonaws/HttpMethod;)V

    return-object p0
.end method

.method public withResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 430
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    return-object p0
.end method

.method public withSSEAlgorithm(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setSSEAlgorithm(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V

    return-object p0
.end method

.method public withSSEAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setSSEAlgorithm(Ljava/lang/String;)V

    return-object p0
.end method

.method public withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 536
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    return-object p0
.end method

.method public withSSECustomerKeyAlgorithm(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 567
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setSSECustomerKeyAlgorithm(Lcom/amazonaws/services/s3/model/SSEAlgorithm;)V

    return-object p0
.end method

.method public withZeroByteContent(Z)Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;
    .locals 0

    .line 590
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;->setZeroByteContent(Z)V

    return-object p0
.end method
