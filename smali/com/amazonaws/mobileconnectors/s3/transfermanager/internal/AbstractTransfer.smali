.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.super Ljava/lang/Object;
.source "AbstractTransfer.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# instance fields
.field private final description:Ljava/lang/String;

.field protected monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

.field protected final progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

.field protected volatile state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

.field protected final stateChangeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    .line 65
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->description:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    .line 67
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    .line 68
    invoke-virtual {p0, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->addStateChangeListener(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 1

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 184
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 205
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStateChangeListener(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit p0

    throw p1

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method protected fireProgressEvent(I)V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(IJ)V

    invoke-static {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitor()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    return-object v0
.end method

.method public getProgress()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
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
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyStateChangeListeners(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .line 173
    invoke-interface {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;->transferStateChanged(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 1

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 195
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerChain;->removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeStateChangeListener(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 230
    monitor-exit p0

    throw p1

    .line 233
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method protected rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object p1

    throw p1
.end method

.method public setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    return-void
.end method

.method public setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 2

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .line 164
    invoke-interface {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;->transferStateChanged(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 162
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;
    .locals 3

    .line 281
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 282
    instance-of v0, p1, Lcom/amazonaws/AmazonClientException;

    if-eqz v0, :cond_0

    .line 283
    check-cast p1, Lcom/amazonaws/AmazonClientException;

    return-object p1

    .line 284
    :cond_0
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to complete transfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    :cond_1
    return-void
.end method

.method public waitForException()Lcom/amazonaws/AmazonClientException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object v0

    return-object v0
.end method
