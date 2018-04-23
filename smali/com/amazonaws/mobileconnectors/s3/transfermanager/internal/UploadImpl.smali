.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "UploadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    return-void
.end method

.method private pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    .line 89
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    .line 110
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->performAbort()V

    return-void
.end method

.method public pause()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->getPauseStatus()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-eq v1, v2, :cond_0

    .line 77
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->getPauseStatus()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    throw v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->getInfoToResume()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    return-object v0
.end method

.method public tryPause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object p1

    return-object p1
.end method

.method public waitForUploadResult()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 58
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    .line 59
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    return-object v0
.end method
