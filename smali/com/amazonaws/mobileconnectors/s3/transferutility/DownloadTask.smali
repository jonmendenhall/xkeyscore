.class Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/commons/logging/Log;

.field private static final SIXTEEN_KB:I = 0x4000


# instance fields
.field private final download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private final networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 64
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 65
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 66
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    return-void
.end method

.method private saveToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5

    .line 140
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 145
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 148
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x4000

    .line 149
    :try_start_1
    new-array p2, p2, [B

    .line 151
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 152
    invoke-virtual {v3, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 168
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v1, "got exception"

    invoke-interface {v0, v1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 173
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v0, "got exception"

    invoke-interface {p2, v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p2

    move-object v2, v3

    goto :goto_6

    :catch_2
    move-exception p2

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception p2

    move-object v2, v3

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_4
    move-exception p2

    .line 160
    :goto_4
    :try_start_4
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store object contents to disk: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p2

    .line 155
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketTimeoutException: Unable to retrieve contents over network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 158
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    if-eqz v2, :cond_4

    .line 165
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    .line 168
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v2, "got exception"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    :cond_4
    :goto_7
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 173
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v1, "got exception"

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 174
    :goto_8
    throw p2
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 74
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 75
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 76
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 80
    new-instance v2, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appendTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 83
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-object v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->file:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    const/4 v12, 0x1

    if-lez v5, :cond_1

    .line 86
    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    const-string v6, "Resume transfer %d from %d bytes"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v3

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v12

    .line 86
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const-wide/16 v5, -0x1

    .line 92
    invoke-virtual {v2, v8, v9, v5, v6}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 94
    :cond_1
    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->newProgressListener(I)Lcom/amazonaws/event/ProgressListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 97
    :try_start_0
    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v5, v2}, Lcom/amazonaws/services/s3/AmazonS3;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 99
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "AmazonS3.getObject returns null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 101
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 102
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 105
    :cond_2
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getInstanceLength()J

    move-result-wide v17

    .line 106
    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v7, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    move-wide/from16 v10, v17

    invoke-virtual/range {v6 .. v11}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V

    .line 107
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->saveToFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 108
    iget-object v13, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v14, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    move-wide/from16 v15, v17

    invoke-virtual/range {v13 .. v18}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJ)V

    .line 109
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 110
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 112
    invoke-static {v2}, Lcom/amazonaws/retry/RetryUtils;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transfer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is interrupted by user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 118
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 119
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lcom/amazonaws/AmazonClientException;

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->networkInfo:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    .line 120
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v4

    if-nez v4, :cond_5

    .line 121
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transfer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " waits for network"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 122
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    goto :goto_0

    .line 124
    :cond_5
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 125
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V

    .line 126
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->download:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 129
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
