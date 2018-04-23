.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.source "MultipleFileDownloadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileDownload;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;",
        ">;",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileDownload;"
    }
.end annotation


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final keyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;",
            "Lcom/amazonaws/event/ProgressListenerChain;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/util/Collection;)V

    .line 42
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->keyPrefix:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 103
    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->abortWithoutNotifyingStateChangeListener()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 112
    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->notifyStateChangeListeners(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->keyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->waitForCompletion()V

    return-void
.end method
