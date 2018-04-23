.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;
.super Ljava/lang/Object;
.source "CopyCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final copy:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

.field private final copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

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

.field private final metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private multipartUploadId:Ljava/lang/String;

.field private final progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/event/ProgressListenerChain;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->futures:Ljava/util/List;

    .line 99
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 100
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getConfiguration()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 101
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 102
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 103
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 105
    invoke-static {p6}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 106
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copy:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    return-void
.end method

.method private copyInOneChunk()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->copyObject(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/services/s3/model/CopyObjectResult;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setSourceBucketName(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setSourceKey(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 153
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setDestinationBucketName(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setDestinationKey(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setETag(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectResult;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setVersionId(Ljava/lang/String;)V

    return-object v1
.end method

.method private copyInParts()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->multipartUploadId:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->getOptimalPartSize(J)J

    move-result-wide v7

    .line 178
    :try_start_0
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->multipartUploadId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 180
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v9

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;-><init>(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Ljava/lang/String;JJ)V

    .line 181
    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyPartsInParallel(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const/16 v3, 0x8

    .line 183
    invoke-direct {p0, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->fireProgressEvent(I)V

    .line 185
    :try_start_1
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v4, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->multipartUploadId:Ljava/lang/String;

    invoke-direct {v4, v0, v1, v5}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 188
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to abort multipart upload, you may need to manually remove uploaded parts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-interface {v1, v3, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    :goto_0
    throw v2
.end method

.method private copyPartsInParallel(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;)V
    .locals 5

    .line 213
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->hasMoreRequests()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "TransferManager has been shutdown"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->getNextCopyPartRequest()Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartCallable;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fireProgressEvent(I)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 272
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private getOptimalPartSize(J)J
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 202
    invoke-static {v0, v1, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->calculateOptimalPartSizeForCopy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;J)J

    move-result-wide p1

    .line 204
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated optimal part size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-wide p1
.end method

.method private initiateMultipartUpload(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Ljava/lang/String;
    .locals 3

    .line 227
    new-instance v0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 228
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getCannedAccessControlList()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->withCannedACL(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setAccessControlList(Lcom/amazonaws/services/s3/model/AccessControlList;)V

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 248
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    if-nez p1, :cond_3

    .line 250
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 252
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 253
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 256
    :cond_4
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 258
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->populateMetadataWithEncryptionParams(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 260
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiated new multipart upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-object p1
.end method

.method private populateMetadataWithEncryptionParams(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 10

    .line 277
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-cek-alg"

    const-string v2, "x-amz-iv"

    const-string v3, "x-amz-key"

    const-string v4, "x-amz-key-v2"

    const-string v5, "x-amz-wrap-alg"

    const-string v6, "x-amz-tag-len"

    const-string v7, "x-amz-matdesc"

    const-string v8, "x-amz-unencrypted-content-length"

    const-string v9, "x-amz-unencrypted-content-md5"

    .line 280
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setUserMetadata(Ljava/util/Map;)V

    .line 296
    :cond_0
    array-length p2, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v3, v1, v2

    .line 297
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 299
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copy:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->isMultipartCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->fireProgressEvent(I)V

    .line 132
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyInParts()V

    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->copyInOneChunk()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

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

    .line 64
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

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

    .line 110
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->futures:Ljava/util/List;

    return-object v0
.end method

.method getMultipartUploadId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->multipartUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isMultipartCopy()Z
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 124
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartCopyThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
