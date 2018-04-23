.class Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->submitDownloadTask(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;ZLjava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

.field final synthetic val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$resumeExistingDownload:Z


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/io/File;Lcom/amazonaws/services/s3/model/GetObjectRequest;Z)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$file:Ljava/io/File;

    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    iput-boolean p6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$resumeExistingDownload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 698
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 699
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$file:Ljava/io/File;

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;)V

    iget-boolean v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$resumeExistingDownload:Z

    invoke-static {v0, v1, v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->retryableDownloadS3ObjectToFile(Ljava/io/File;Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;Z)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 728
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 729
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    return-object v0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    const/4 v0, 0x1

    .line 733
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 736
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v1, v2, :cond_1

    .line 737
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;->val$download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 739
    :cond_1
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 740
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 742
    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0
.end method
