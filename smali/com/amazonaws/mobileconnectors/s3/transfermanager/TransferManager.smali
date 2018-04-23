.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;
.super Ljava/lang/Object;
.source "TransferManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = "/"

.field private static final USER_AGENT:Ljava/lang/String;

.field private static final USER_AGENT_MULTIPART:Ljava/lang/String;

.field private static final daemonThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->log:Lorg/apache/commons/logging/Log;

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT:Ljava/lang/String;

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT_MULTIPART:Ljava/lang/String;

    .line 1185
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$3;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$3;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->daemonThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 179
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    new-instance v1, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v1}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 213
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 196
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;)V
    .locals 1

    .line 230
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->daemonThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 247
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 248
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 249
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-direct {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object p0
.end method

.method public static appendMultipartUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 1169
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT_MULTIPART:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method public static appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 1164
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1422
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    .line 602
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 607
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 610
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazonaws/event/ProgressListener;

    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;

    invoke-direct {v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-direct {v10, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 624
    new-instance v2, Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$1;

    invoke-direct {v7, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)V

    new-array v9, v5, [Lcom/amazonaws/event/ProgressListener;

    aput-object v10, v9, v4

    invoke-direct {v2, v7, v9}, Lcom/amazonaws/event/ProgressListenerChain;-><init>(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V

    .line 638
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 639
    new-instance v2, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v7, v9}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 645
    :cond_0
    iget-object v7, v6, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v7, v2}, Lcom/amazonaws/services/s3/AmazonS3;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 648
    new-instance v15, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    const/4 v11, 0x0

    move-object v7, v15

    move-object v9, v0

    move-object/from16 v12, p3

    move-object v13, v1

    move-object/from16 v14, p2

    invoke-direct/range {v7 .. v14}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)V

    .line 653
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    const-wide/16 v11, 0x0

    if-eqz v2, :cond_1

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    array-length v2, v2

    if-ne v2, v3, :cond_1

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    aget-wide v3, v2, v4

    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    aget-wide v7, v2, v5

    goto :goto_0

    :cond_1
    move-wide v3, v11

    :goto_0
    sub-long v13, v7, v3

    add-long/2addr v13, v9

    .line 662
    invoke-virtual {v0, v13, v14}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    if-eqz p5, :cond_2

    .line 665
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 668
    invoke-virtual {v1, v3, v4, v7, v8}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 669
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->updateProgress(J)V

    sub-long/2addr v7, v3

    add-long v13, v7, v9

    :cond_2
    cmp-long v0, v13, v11

    if-gez v0, :cond_3

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to determine the range for download operation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_3
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object v4, v6

    move-object v5, v15

    .line 681
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->submitDownloadTask(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;ZLjava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 683
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;

    invoke-direct {v1, v15, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/util/concurrent/Future;)V

    invoke-virtual {v15, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 684
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v15
.end method

.method private doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    .line 466
    invoke-static {v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    if-eqz p4, :cond_0

    .line 469
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getMultipartUploadId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :goto_1
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    .line 472
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {v9, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 474
    :cond_1
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 476
    invoke-static {v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 483
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 484
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to resume the upload. No file specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uploading to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 497
    invoke-static {v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v1

    .line 496
    invoke-virtual {v7, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 499
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazonaws/event/ProgressListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;

    invoke-direct {v3, v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 501
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {v10, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 503
    invoke-virtual {v9, v10}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V

    .line 505
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    move-object v1, p2

    invoke-direct {v11, v0, v7, v10, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 508
    new-instance v12, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;

    iget-object v2, v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object v0, v12

    move-object v1, v8

    move-object v3, v11

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    .line 510
    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    iget-object v3, v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object v0, v7

    move-object v2, v11

    move-object v4, v12

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadCallable;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 512
    iget-object v0, v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v7, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 513
    invoke-virtual {v11, v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    return-object v11
.end method

.method private listFiles(Ljava/io/File;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    .line 1062
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1064
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1065
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_1

    .line 1067
    invoke-direct {p0, v2, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    goto :goto_1

    .line 1070
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private shutdown()V
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1160
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method private submitDownloadTask(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;ZLjava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/GetObjectRequest;",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$2;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/io/File;Lcom/amazonaws/services/s3/model/GetObjectRequest;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abortMultipartUploads(Ljava/lang/String;Ljava/util/Date;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v1, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v0

    .line 1098
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getMultipartUploads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/MultipartUpload;

    .line 1099
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getInitiated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_1

    .line 1100
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    new-instance v4, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    .line 1101
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/MultipartUpload;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p1, v5, v2}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-static {v4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    invoke-interface {v3, v2}, Lcom/amazonaws/services/s3/AmazonS3;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    goto :goto_0

    .line 1105
    :cond_2
    new-instance v1, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;-><init>(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextUploadIdMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withUploadIdMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v1

    .line 1107
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->getNextKeyMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;->withKeyMarker(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->listMultipartUploads(Lcom/amazonaws/services/s3/model/ListMultipartUploadsRequest;)Lcom/amazonaws/services/s3/model/MultipartUploadListing;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
    .locals 1

    const/4 v0, 0x0

    .line 1269
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1308
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->appendSingleObjectUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 1310
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source bucket name must be specified when a copy request is initiated."

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The source object key must be specified when a copy request is initiated."

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination bucket name must be specified when a copy request is initiated."

    .line 1314
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The destination object key must be specified when a copy request is initiated."

    .line 1317
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying object from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    new-instance v1, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    .line 1329
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;->withSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;

    move-result-object v1

    .line 1333
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v2, v1}, Lcom/amazonaws/services/s3/AmazonS3;->getObjectMetadata(Lcom/amazonaws/services/s3/model/GetObjectMetadataRequest;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v5

    .line 1335
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 1336
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 1338
    new-instance v7, Lcom/amazonaws/event/ProgressListenerChain;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazonaws/event/ProgressListener;

    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;

    invoke-direct {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v7, v2}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 1340
    new-instance v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;

    invoke-direct {v8, v0, v1, v7, p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 1342
    new-instance v9, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v8

    move-object v4, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 1344
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    move-object v0, v10

    move-object v2, v8

    move-object v4, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;Ljava/util/concurrent/ExecutorService;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyCallable;Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 1346
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v10, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyMonitor;->setTimedThreadPool(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1347
    invoke-virtual {v8, v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    return-object v8
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1235
    new-instance v0, Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->copy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;

    move-result-object p1

    return-object p1
.end method

.method public download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 561
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object p1

    return-object p1
.end method

.method public download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 587
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 1

    .line 538
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->download(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object p1

    return-object p1
.end method

.method public downloadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileDownload;
    .locals 11

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    move-object v4, p2

    .line 769
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 770
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 771
    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x0

    .line 777
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    :cond_2
    if-nez v5, :cond_3

    .line 782
    new-instance v5, Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;-><init>()V

    .line 783
    invoke-virtual {v5, p1}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v5

    const-string v6, "/"

    .line 784
    invoke-virtual {v5, v6}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withDelimiter(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/amazonaws/services/s3/model/ListObjectsRequest;->withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ListObjectsRequest;

    move-result-object v5

    .line 785
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v6, v5}, Lcom/amazonaws/services/s3/AmazonS3;->listObjects(Lcom/amazonaws/services/s3/model/ListObjectsRequest;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v5

    goto :goto_0

    .line 787
    :cond_3
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-interface {v6, v5}, Lcom/amazonaws/services/s3/AmazonS3;->listNextBatchOfObjects(Lcom/amazonaws/services/s3/model/ObjectListing;)Lcom/amazonaws/services/s3/model/ObjectListing;

    move-result-object v5

    .line 790
    :goto_0
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 794
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 795
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 795
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 797
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getSize()J

    move-result-wide v7

    add-long/2addr v1, v7

    goto :goto_1

    .line 800
    :cond_4
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping download for object "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " since it is also a virtual directory"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 805
    :cond_5
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 806
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectListing;->isTruncated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 807
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 810
    new-instance v3, Lcom/amazonaws/event/ProgressListenerChain;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/event/ProgressListener;

    invoke-direct {v3, v0}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 812
    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 813
    invoke-virtual {v5, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    .line 819
    new-instance v7, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;

    invoke-direct {v7, v5, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 822
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 825
    new-instance v9, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;

    move-object v0, v9

    move-object v2, v5

    move-object v5, p1

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 828
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-direct {p1, v9, v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v9, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 831
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 832
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;

    invoke-direct {v0, p1, v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;)V

    .line 835
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 837
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 838
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 839
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_6

    .line 840
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t create parent directories for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 847
    :cond_6
    new-instance v2, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 848
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 849
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    .line 847
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 856
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 857
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v9, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileDownloadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    return-object v9

    .line 863
    :cond_8
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v9
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1432
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->shutdown()V

    return-void
.end method

.method public getAmazonS3Client()Lcom/amazonaws/services/s3/AmazonS3;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    return-object v0
.end method

.method public resumeDownload(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
    .locals 7

    const-string v0, "PausedDownload is mandatory to resume a download."

    .line 1392
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1394
    new-instance v2, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 1395
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getRange()[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getRange()[J

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1399
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getRange()[J

    move-result-object v0

    const/4 v1, 0x0

    .line 1400
    aget-wide v3, v0, v1

    const/4 v1, 0x1

    aget-wide v5, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 1402
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->isRequesterPays()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRequesterPays(Z)V

    .line 1403
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setResponseHeaders(Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    .line 1405
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableDownload;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;

    move-result-object p1

    return-object p1
.end method

.method public resumeUpload(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 5

    const-string v0, "PauseUpload is mandatory to resume a upload."

    .line 1367
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getPartSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->setMinimumUploadPartSize(J)V

    .line 1370
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    .line 1371
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getMutlipartUploadThreshold()J

    move-result-wide v1

    .line 1370
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->setMultipartUploadThreshold(J)V

    .line 1372
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x0

    .line 1372
    invoke-direct {p0, v0, v1, v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object p1

    return-object p1
.end method

.method public setConfiguration(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->configuration:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;

    return-void
.end method

.method public shutdownNow()V
    .locals 1

    const/4 v0, 0x1

    .line 1120
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->shutdownNow(Z)V

    return-void
.end method

.method public shutdownNow(Z)V
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1144
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->timedThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1147
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    instance-of p1, p1, Lcom/amazonaws/services/s3/AmazonS3Client;

    if-eqz p1, :cond_0

    .line 1148
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    check-cast p1, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->shutdown()V

    :cond_0
    return-void
.end method

.method public upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object p1

    return-object p1
.end method

.method public upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 426
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 359
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 330
    new-instance v0, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->upload(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object p1

    return-object p1
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 886
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;

    move-result-object p1

    return-object p1
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 7

    if-eqz p3, :cond_1

    .line 911
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 916
    invoke-direct {p0, p3, v5, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->listFiles(Ljava/io/File;Ljava/util/List;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 918
    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;

    move-result-object p1

    return-object p1

    .line 912
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide a directory to upload"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 942
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;

    move-result-object p1

    return-object p1
.end method

.method public uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;",
            ")",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileUpload;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    if-eqz p3, :cond_a

    .line 969
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_2

    .line 974
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "/"

    .line 976
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, ""

    .line 981
    :cond_3
    :goto_1
    new-instance v6, Lcom/amazonaws/event/ProgressListenerChain;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/amazonaws/event/ProgressListener;

    invoke-direct {v6, v3}, Lcom/amazonaws/event/ProgressListenerChain;-><init>([Lcom/amazonaws/event/ProgressListener;)V

    .line 983
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-direct {v10}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;-><init>()V

    .line 989
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;

    invoke-direct {v11, v10, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 992
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 993
    new-instance v13, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;

    const-string v4, "Uploading etc"

    move-object v3, v13

    move-object v5, v10

    move-object v7, v0

    move-object/from16 v8, p1

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 995
    new-instance v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    invoke-direct {v3, v13, v12}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V

    invoke-virtual {v13, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V

    .line 997
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 998
    new-instance v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;

    invoke-direct {v4, v3, v13}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;)V

    if-eqz p4, :cond_9

    .line 1001
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_4

    .line 1012
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 1013
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    const-wide/16 v7, 0x0

    .line 1018
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 1020
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1021
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v7, v14

    .line 1023
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v14, "\\\\"

    const-string v15, "/"

    .line 1024
    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1026
    new-instance v14, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v14}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    if-eqz v2, :cond_6

    .line 1032
    invoke-interface {v2, v5, v14}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/ObjectMetadataProvider;->provideObjectMetadata(Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1038
    :cond_6
    new-instance v15, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p1

    invoke-direct {v15, v9, v1, v5}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 1041
    invoke-virtual {v15, v14}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, v11}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    const/4 v5, 0x0

    move-object/from16 v14, p0

    .line 1038
    invoke-direct {v14, v1, v4, v5, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object/from16 v14, p0

    move-object/from16 v9, p1

    move-object/from16 v16, v1

    :goto_3
    move-object/from16 v1, v16

    goto :goto_2

    :cond_8
    move-object/from16 v14, p0

    .line 1047
    invoke-virtual {v10, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->setTotalBytesToTransfer(J)V

    goto :goto_5

    :cond_9
    :goto_4
    move-object/from16 v14, p0

    .line 1002
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v13, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileUploadImpl;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 1052
    :goto_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v13

    :cond_a
    :goto_6
    move-object/from16 v14, p0

    .line 970
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a common base directory for uploaded files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
