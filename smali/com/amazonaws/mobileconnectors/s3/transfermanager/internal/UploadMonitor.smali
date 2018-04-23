.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;
.super Ljava/lang/Object;
.source "UploadMonitor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
        ">;",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

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

.field private isUploadDone:Z

.field private final multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

.field private nextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private pollInterval:I

.field private final progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

.field private uploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->isUploadDone:Z

    const/16 v0, 0x1388

    .line 99
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->pollInterval:I

    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 120
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->getConfiguration()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 122
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    .line 123
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 124
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 126
    invoke-static {p6}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->wrapListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 127
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    .line 129
    invoke-interface {p3, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private cancelFutures()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->nextFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 289
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 290
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getFutures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getETags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 249
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to upload part: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
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

.method private completeMultipartUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 230
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 231
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->uploadId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->collectPartETags()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 229
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->uploadComplete()V

    .line 235
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;-><init>()V

    .line 236
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setBucketName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setKey(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setETag(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->getVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->setVersionId(Ljava/lang/String;)V

    return-object v1
.end method

.method private fireProgressEvent(I)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 220
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 221
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->progressListenerChainCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private declared-synchronized markAllDone()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 94
    :try_start_0
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->isUploadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 93
    monitor-exit p0

    throw v0
.end method

.method private poll()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 161
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->reschedule()V

    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 168
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->completeMultipartUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method private reschedule()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;)V

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->pollInterval:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->setNextFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private declared-synchronized setNextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->nextFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method private upload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->uploadComplete()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getMultipartUploadId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->uploadId:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->futures:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getFutures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->reschedule()V

    :goto_0
    return-object v0
.end method

.method private uploadComplete()V
    .locals 2

    .line 196
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->markAllDone()V

    .line 197
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 201
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->isMultipartUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 202
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->fireProgressEvent(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->upload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->poll()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/16 v1, 0x8

    .line 150
    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->fireProgressEvent(I)V

    .line 151
    throw v0

    .line 145
    :catch_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/16 v0, 0x10

    .line 146
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->fireProgressEvent(I)V

    .line 147
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

    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->call()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->nextFuture:Ljava/util/concurrent/Future;
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

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->isUploadDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    .line 269
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->getPersistableUpload()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    .line 272
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->determinePauseStatus(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->cancelFutures()V

    .line 275
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->performAbortMultipartUpload()V

    .line 277
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    return-object p1

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->cancelFutures()V

    .line 280
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    invoke-direct {p1, v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;Ljava/lang/Object;)V

    return-object p1
.end method

.method performAbort()V
    .locals 1

    .line 302
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->cancelFutures()V

    .line 303
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->multipartUploadCallable:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;->performAbortMultipartUpload()V

    return-void
.end method

.method public setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
