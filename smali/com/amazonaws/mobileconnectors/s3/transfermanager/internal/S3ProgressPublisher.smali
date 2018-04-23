.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;
.super Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.source "S3ProgressPublisher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>()V

    return-void
.end method

.method public static publishTransferPersistable(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/event/ProgressListener;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 40
    instance-of v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    .line 44
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
