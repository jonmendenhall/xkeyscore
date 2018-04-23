.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.super Ljava/lang/Object;
.source "TransferUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/commons/logging/Log;

.field static final MINIMUM_UPLOAD_PART_SIZE:I = 0x500000

.field private static userAgentFromConfig:Ljava/lang/String; = ""


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final defaultBucket:Ljava/lang/String;

.field private final s3:Lcom/amazonaws/services/s3/AmazonS3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->LOGGER:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 253
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appContext:Landroid/content/Context;

    .line 254
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->defaultBucket:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 235
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appContext:Landroid/content/Context;

    .line 236
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 237
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->defaultBucket:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->setUserAgentFromConfig(Ljava/lang/String;)V

    return-void
.end method

.method static appendMultipartTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService_multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getUserAgentFromConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method static appendTransferServiceUserAgentString(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getUserAgentFromConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method public static builder()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 1

    .line 227
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;-><init>()V

    return-object v0
.end method

.method private createMultipartUploadRecords(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I
    .locals 27

    move-object/from16 v0, p0

    .line 624
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-double v3, v1

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double v5, v3, v5

    .line 626
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4154000000000000L    # 5242880.0

    .line 627
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-long v5, v5

    long-to-double v7, v5

    div-double/2addr v3, v7

    .line 632
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 638
    new-array v7, v3, [Landroid/content/ContentValues;

    .line 639
    iget-object v8, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    const-string v15, ""

    .line 640
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v21, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, v21

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 639
    invoke-virtual/range {v8 .. v20}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->generateContentValuesForMultiPartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-wide v10, v1

    move v1, v4

    move v2, v1

    move-wide/from16 v25, v21

    :goto_0
    if-ge v1, v3, :cond_1

    .line 642
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 643
    iget-object v12, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    const-string v19, ""

    sub-long/2addr v10, v5

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    if-gtz v8, :cond_0

    move/from16 v22, v4

    goto :goto_1

    :cond_0
    move/from16 v22, v9

    :goto_1
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-wide/from16 v16, v25

    move/from16 v18, v2

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    invoke-virtual/range {v12 .. v24}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->generateContentValuesForMultiPartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JILjava/lang/String;JILcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Landroid/content/ContentValues;

    move-result-object v8

    aput-object v8, v7, v1

    add-long v25, v25, v5

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_1
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->bulkInsertTransferRecords([Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method private getDefaultBucketOrThrow()Ljava/lang/String;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->defaultBucket:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransferUtility has not been configured with a default bucket. Please use the corresponding method that specifies bucket name or configure the default bucket name in construction of the object. See TransferUtility.builder().defaultBucket() or TransferUtility.builder().awsConfiguration()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->defaultBucket:Ljava/lang/String;

    return-object v0
.end method

.method private static getUserAgentFromConfig()Ljava/lang/String;
    .locals 3

    .line 110
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const-string v1, ""

    .line 113
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized sendIntent(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    .line 755
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    invoke-static {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->put(Ljava/lang/String;Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 757
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appContext:Landroid/content/Context;

    const-class v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 759
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "s3_reference_key"

    .line 760
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->appContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 754
    monitor-exit p0

    throw p1
.end method

.method private static setUserAgentFromConfig(Ljava/lang/String;)V
    .locals 1

    .line 105
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    monitor-enter v0

    .line 106
    :try_start_0
    sput-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private shouldUploadInMultipart(Ljava/io/File;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 766
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public cancel(I)Z
    .locals 1

    const-string v0, "cancel_transfer"

    .line 709
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->sendIntent(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public cancelAllWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)V
    .locals 3

    const/4 v0, 0x0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryAllTransfersWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 724
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    .line 725
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 726
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->cancel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 730
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public deleteTransferRecord(I)Z
    .locals 1

    .line 744
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->cancel(I)Z

    .line 745
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->deleteTransferRecords(I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public download(Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 2

    .line 295
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getDefaultBucketOrThrow()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getDefaultBucketOrThrow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 8

    if-eqz p3, :cond_2

    .line 311
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->insertSingleTransferRecord(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 317
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overwrite existing file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v0, "add_transfer"

    .line 322
    invoke-direct {p0, v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->sendIntent(Ljava/lang/String;I)V

    .line 323
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-object v0

    .line 312
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getDbUtil()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    return-object v0
.end method

.method public getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 3

    const/4 v0, 0x0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryTransferById(I)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, p1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 524
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->updateFromDB(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 529
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public getTransfersWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryAllTransfersWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 549
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 550
    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 551
    invoke-virtual {v2, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->updateFromDB(Landroid/database/Cursor;)V

    .line 552
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 556
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getTransfersWithTypeAndState(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 573
    new-array v0, v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getTransfersWithTypeAndStates(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTransfersWithTypeAndStates(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;",
            "[",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;",
            ">;"
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 592
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v2, p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryTransfersWithTypeAndStates(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 593
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "part_num"

    .line 594
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "_id"

    .line 599
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 600
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v1, p2, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 601
    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->updateFromDB(Landroid/database/Cursor;)V

    .line 602
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 606
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p2
.end method

.method public pause(I)Z
    .locals 1

    const-string v0, "pause_transfer"

    .line 661
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->sendIntent(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public pauseAllWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)V
    .locals 3

    const/4 v0, 0x0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryAllTransfersWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 674
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    .line 675
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 676
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->pause(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 680
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public resume(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 1

    const-string v0, "resume_transfer"

    .line 696
    invoke-direct {p0, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->sendIntent(Ljava/lang/String;I)V

    .line 697
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getDefaultBucketOrThrow()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 6

    .line 397
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getDefaultBucketOrThrow()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 6

    .line 426
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getDefaultBucketOrThrow()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 7

    .line 459
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getDefaultBucketOrThrow()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 0

    .line 508
    invoke-virtual/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 1

    .line 353
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 6

    .line 382
    new-instance v4, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 412
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 443
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    return-object p1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
    .locals 7

    if-eqz p3, :cond_2

    .line 477
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 481
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->shouldUploadInMultipart(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->createMultipartUploadRecords(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)I

    move-result p4

    :goto_0
    move v1, p4

    goto :goto_1

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->insertSingleTransferRecord(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Landroid/net/Uri;

    move-result-object p4

    .line 487
    invoke-virtual {p4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    :goto_1
    const-string p4, "add_transfer"

    .line 490
    invoke-direct {p0, p4, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->sendIntent(Ljava/lang/String;I)V

    .line 491
    new-instance p4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    move-object v0, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-object p4

    .line 478
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
