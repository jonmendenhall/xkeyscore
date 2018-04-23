.class public Lcom/amazonaws/services/s3/UploadObjectObserver;
.super Ljava/lang/Object;
.source "UploadObjectObserver.java"


# instance fields
.field private es:Ljava/util/concurrent/ExecutorService;

.field private final futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private s3direct:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->futures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p1
.end method

.method protected getAmazonS3()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method protected getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->es:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getFutures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->futures:Ljava/util/List;

    return-object v0
.end method

.method protected getRequest()Lcom/amazonaws/services/s3/model/UploadObjectRequest;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    return-object v0
.end method

.method protected getS3DirectSpi()Lcom/amazonaws/services/s3/internal/S3DirectSpi;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3direct:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    return-object v0
.end method

.method protected getUploadId()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/amazonaws/services/s3/model/UploadObjectRequest;Lcom/amazonaws/services/s3/internal/S3DirectSpi;Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)Lcom/amazonaws/services/s3/UploadObjectObserver;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 84
    iput-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3direct:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    .line 85
    iput-object p3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 86
    iput-object p4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->es:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method protected newInitiateMultipartUploadRequest(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .locals 4

    .line 93
    new-instance v0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 94
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 95
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->withMaterialsDescription(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->withRedirectLocation(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withSSEAwsKeyManagementParams(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    return-object p1
.end method

.method protected newUploadPartRequest(Lcom/amazonaws/services/s3/internal/PartCreationEvent;Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 3

    .line 219
    new-instance v0, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 220
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 222
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->getPartNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 224
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p2

    .line 225
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->isLastPart()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withLastPart(Z)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    .line 226
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 227
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getUploadPartMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object p1

    return-object p1
.end method

.method public onAbort()V
    .locals 5

    .line 195
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/UploadObjectObserver;->getFutures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    .line 196
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 201
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to abort multi-part upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onCompletion(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    .line 185
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->req:Lcom/amazonaws/services/s3/model/UploadObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 183
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public onPartCreate(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
    .locals 5

    .line 144
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->getPart()Ljava/io/File;

    move-result-object v0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/UploadObjectObserver;->newUploadPartRequest(Lcom/amazonaws/services/s3/internal/PartCreationEvent;Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->getFileDeleteObserver()Lcom/amazonaws/services/s3/OnFileDelete;

    move-result-object p1

    .line 148
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/UploadObjectObserver;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 149
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->futures:Ljava/util/List;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/amazonaws/services/s3/UploadObjectObserver$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;-><init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUploadInitiation(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 118
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/UploadObjectObserver;->newInitiateMultipartUploadRequest(Lcom/amazonaws/services/s3/model/UploadObjectRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->uploadId:Ljava/lang/String;

    return-object p1
.end method

.method protected uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver;->s3direct:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/S3DirectSpi;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method
