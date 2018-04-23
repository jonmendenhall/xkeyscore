.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;
.super Ljava/lang/Object;
.source "TransferManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOptimalPartSize(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)J
    .locals 4

    .line 113
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMinimumUploadPartSize()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static calculateOptimalPartSizeForCopy(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;J)J
    .locals 2

    long-to-double p2, p2

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr p2, v0

    .line 162
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    .line 164
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartCopyPartSize()J

    move-result-wide p0

    long-to-double p0, p0

    .line 163
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static createDefaultExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    .line 42
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils$1;-><init>()V

    const/16 v1, 0xa

    .line 52
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static determinePauseStatus(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
    .locals 0

    if-eqz p1, :cond_1

    .line 174
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, p1, :cond_0

    .line 175
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0

    .line 176
    :cond_0
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, p1, :cond_1

    .line 177
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0

    .line 180
    :cond_1
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p0, p1, :cond_2

    .line 181
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0

    .line 183
    :cond_2
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0
.end method

.method public static getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J
    .locals 4

    .line 88
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isUploadParallelizable(Lcom/amazonaws/services/s3/model/PutObjectRequest;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static shouldUseMultipartUpload(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;)Z
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide v0

    .line 134
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManagerConfiguration;->getMultipartUploadThreshold()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
