.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;
.super Ljava/lang/Object;
.source "UploadPartRequestFactory.java"


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private offset:J

.field private final optimalPartSize:J

.field private partNumber:I

.field private final putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

.field private remainingBytes:J

.field private sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

.field private final uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/PutObjectRequest;Ljava/lang/String;J)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->partNumber:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->offset:J

    .line 48
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 49
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->optimalPartSize:J

    .line 51
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->key:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getRequestFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->file:Ljava/io/File;

    .line 54
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferManagerUtils;->getContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->remainingBytes:J

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    return-void
.end method


# virtual methods
.method public declared-synchronized getNextUploadPartRequest()Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 12

    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->optimalPartSize:J

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->remainingBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->remainingBytes:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 68
    new-instance v3, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    .line 69
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->key:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    new-instance v11, Lcom/amazonaws/services/s3/internal/InputSubstream;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 73
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v4, v11

    move-wide v8, v0

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .line 72
    invoke-virtual {v3, v11}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->partNumber:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->partNumber:I

    .line 75
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 76
    invoke-virtual {v3, v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    goto :goto_1

    .line 78
    :cond_1
    new-instance v3, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;-><init>()V

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->bucketName:Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->key:Ljava/lang/String;

    .line 80
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->uploadId:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->file:Ljava/io/File;

    .line 82
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->offset:J

    .line 83
    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withFileOffset(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->partNumber:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->partNumber:I

    .line 84
    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v0, v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->withPartSize(J)Lcom/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v3

    .line 88
    :goto_1
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    if-eqz v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->sseCustomerKey:Lcom/amazonaws/services/s3/model/SSECustomerKey;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 91
    :cond_2
    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->offset:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->offset:J

    .line 92
    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->remainingBytes:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->remainingBytes:J

    .line 94
    invoke-virtual {v3, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setLastPart(Z)V

    .line 95
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->putObjectRequest:Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    .line 62
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasMoreRequests()Z
    .locals 4

    monitor-enter p0

    .line 59
    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory;->remainingBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
