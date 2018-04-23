.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "DownloadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;


# instance fields
.field private final persistableDownload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

.field s3Object:Lcom/amazonaws/services/s3/model/S3Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 45
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    .line 46
    invoke-direct {p0, p6, p7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->captureDownloadState(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->persistableDownload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    .line 47
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->persistableDownload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    invoke-static {p3, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->publishTransferPersistable(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private captureDownloadState(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
    .locals 9

    .line 137
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    .line 139
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v5

    .line 142
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v6

    .line 143
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays()Z

    move-result v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JLcom/amazonaws/services/s3/model/ResponseHeaderOverrides;ZLjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 91
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->abort()V

    .line 94
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 88
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abortWithoutNotifyingStateChangeListener()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 106
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 108
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 103
    monitor-exit p0

    throw v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public pause()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 158
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->persistableDownload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;

    invoke-static {v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->determinePauseStatus(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    throw v1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->persistableDownload:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;

    return-object v0
.end method

.method public declared-synchronized setS3Object(Lcom/amazonaws/services/s3/model/S3Object;)V
    .locals 0

    monitor-enter p0

    .line 115
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->s3Object:Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit p0

    throw p1
.end method

.method public setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 126
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->fireProgressEvent(I)V

    :cond_0
    return-void
.end method
