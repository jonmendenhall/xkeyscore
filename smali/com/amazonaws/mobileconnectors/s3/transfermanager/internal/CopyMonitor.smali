.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;
.super Ljava/lang/Object;
.source "CopyMonitor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;",
        ">;",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;"
    }
.end annotation


# instance fields
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

.field private isCopyDone:Z

.field private final multipartCopyCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

.field private nextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;",
            ">;"
        }
    .end annotation
.end field

.field private pollInterval:I

.field private final progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->futures:Ljava/util/List;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->isCopyDone:Z

    const/16 v0, 0x1388

    .line 100
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->pollInterval:I

    .line 118
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 119
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->multipartCopyCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    .line 120
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 121
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 122
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    .line 124
    invoke-static {p6}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 126
    invoke-interface {p3, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private collectPartETags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->futures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->futures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 250
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to copy part: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private completeMultipartUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 229
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 230
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->uploadId:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->collectPartETags()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 228
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyComplete()V

    .line 235
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;-><init>()V

    .line 236
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setSourceBucketName(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setSourceKey(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setDestinationBucketName(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setDestinationKey(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setETag(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;->setVersionId(Ljava/lang/String;)V

    return-object v1
.end method

.method private copy()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->multipartCopyCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copyComplete()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->multipartCopyCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->getMultipartUploadId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->uploadId:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->multipartCopyCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->getFutures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->reschedule()V

    :goto_0
    return-object v0
.end method

.method private copyComplete()V
    .locals 2

    .line 202
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->markAllDone()V

    .line 204
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 208
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->multipartCopyCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;->isMultipartCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 209
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->fireProgressEvent(I)V

    :cond_0
    return-void
.end method

.method private fireProgressEvent(I)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 178
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private declared-synchronized markAllDone()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 95
    :try_start_0
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->isCopyDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method

.method private poll()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 158
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->reschedule()V

    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 165
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 170
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->completeMultipartUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

    return-object v0
.end method

.method private reschedule()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;)V

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->pollInterval:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private declared-synchronized setNextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->nextFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->copy()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->poll()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/16 v1, 0x8

    .line 143
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->fireProgressEvent(I)V

    .line 144
    throw v0

    .line 138
    :catch_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/16 v0, 0x10

    .line 139
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->fireProgressEvent(I)V

    .line 140
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Upload canceled"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->nextFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->isCopyDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
