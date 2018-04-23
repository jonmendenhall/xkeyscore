.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;
.super Ljava/lang/Object;
.source "UploadCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final eTagsToSkip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private final futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listener:Lcom/amazonaws/event/ProgressListenerChain;

.field private multipartUploadId:Ljava/lang/String;

.field private persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

.field private final upload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->futures:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->eTagsToSkip:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getConfiguration()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 86
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 87
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 88
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->listener:Lcom/amazonaws/event/ProgressListenerChain;

    .line 89
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->upload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    .line 90
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    return-void
.end method

.method private captureUploadStateIfPossible()V
    .locals 10

    .line 148
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 150
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 152
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMinimumUploadPartSize()J

    move-result-wide v6

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 153
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartUploadThreshold()J

    move-result-wide v8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    .line 154
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->notifyPersistableTransferAvailability()V

    :cond_0
    return-void
.end method

.method private fireProgressEvent(I)V
    .locals 3

    .line 374
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 375
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 376
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->listener:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-static {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private getOptimalPartSize(Z)J
    .locals 8

    .line 232
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->calculateOptimalPartSize(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x20

    .line 234
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 239
    :cond_0
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated optimal part size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-wide v0
.end method

.method private identifyExistingPartsForResume(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazonaws/services/s3/model/PartSummary;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v3, Lcom/amazonaws/services/s3/model/ListPartsRequest;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 314
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 315
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/ListPartsRequest;->withPartNumberMarker(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/model/ListPartsRequest;

    move-result-object v1

    .line 313
    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/AmazonS3;->listParts(Lcom/amazonaws/services/s3/model/ListPartsRequest;)Lcom/amazonaws/services/s3/model/PartListing;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartListing;->getParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/PartSummary;

    .line 318
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PartSummary;->getPartNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartListing;->isTruncated()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 323
    :cond_2
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartListing;->getNextPartNumberMarker()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 336
    instance-of p2, p1, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    if-eqz p2, :cond_0

    .line 337
    new-instance p2, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 338
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    .line 338
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p2

    .line 340
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 339
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p2

    .line 341
    move-object v0, p2

    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    move-object v1, p1

    check-cast v1, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;

    .line 343
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptedPutObjectRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->setMaterialsDescription(Ljava/util/Map;)V

    goto :goto_0

    .line 345
    :cond_0
    new-instance p2, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 346
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p2

    .line 348
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object p2

    .line 351
    :goto_0
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendMultipartUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 353
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    .line 354
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setRedirectLocation(Ljava/lang/String;)V

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 364
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p1

    .line 368
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initiated new multipart upload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-object p1
.end method

.method private notifyPersistableTransferAvailability()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->listener:Lcom/amazonaws/event/ProgressListenerChain;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->publishTransferPersistable(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private uploadInOneChunk()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;-><init>()V

    .line 137
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    return-object v1
.end method

.method private uploadInParts()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of v0, v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    .line 177
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getOptimalPartSize(Z)J

    move-result-wide v1

    .line 179
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {p0, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    .line 185
    :cond_0
    :try_start_0
    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;-><init>(Lcom/amazonaws/services/s3/model/PutObjectRequest;Ljava/lang/String;J)V

    .line 188
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-static {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->isUploadParallelizable(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->captureUploadStateIfPossible()V

    .line 190
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadPartsInParallel(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 204
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to cleanly close input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0

    .line 193
    :cond_2
    :try_start_2
    invoke-direct {p0, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadPartsInSeries(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 204
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to cleanly close input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/16 v1, 0x8

    .line 196
    :try_start_4
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->fireProgressEvent(I)V

    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->performAbortMultipartUpload()V

    .line 198
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 202
    :try_start_5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 204
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to cleanly close input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 205
    :cond_4
    :goto_3
    throw v0
.end method

.method private uploadPartsInParallel(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;Ljava/lang/String;)V
    .locals 5

    .line 287
    invoke-direct {p0, p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->identifyExistingPartsForResume(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 289
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "TransferManager has been shutdown"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/PartSummary;

    .line 295
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->eTagsToSkip:Ljava/util/List;

    new-instance v3, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v0

    .line 296
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 295
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartSummary;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->updateProgress(J)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartCallable;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/UploadPartRequest;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private uploadPartsInSeries(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 7

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "TransferManager has been shutdown"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 257
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    const v3, 0x7fffffff

    .line 259
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 264
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/AmazonS3;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartETag()Lcom/amazonaws/services/s3/model/PartETag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 269
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 270
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 268
    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    .line 272
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;-><init>()V

    .line 273
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->upload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 122
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->isMultipartUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 123
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->fireProgressEvent(I)V

    .line 124
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadInParts()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->uploadInOneChunk()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method getETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->eTagsToSkip:Ljava/util/List;

    return-object v0
.end method

.method getFutures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->futures:Ljava/util/List;

    return-object v0
.end method

.method getMultipartUploadId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistableUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->persistableUpload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    return-object v0
.end method

.method public isMultipartUpload()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->shouldUseMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)Z

    move-result v0

    return v0
.end method

.method performAbortMultipartUpload()V
    .locals 5

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 219
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 220
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to abort multipart upload, you may need to manually remove uploaded parts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
