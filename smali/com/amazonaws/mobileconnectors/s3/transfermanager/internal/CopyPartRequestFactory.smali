.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;
.super Ljava/lang/Object;
.source "CopyPartRequestFactory.java"


# instance fields
.field private final copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

.field private offset:J

.field private final optimalPartSize:J

.field private partNumber:I

.field private remainingBytes:J

.field private final uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/CopyObjectRequest;Ljava/lang/String;JJ)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->partNumber:I

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->offset:J

    .line 47
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->uploadId:Ljava/lang/String;

    .line 49
    iput-wide p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->optimalPartSize:J

    .line 50
    iput-wide p5, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->remainingBytes:J

    return-void
.end method

.method private setOtherMetadataInRequest(Lcom/amazonaws/services/s3/model/CopyPartRequest;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 89
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setMatchingETagConstraints(Ljava/util/List;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 92
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 95
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setNonmatchingETagConstraints(Ljava/util/List;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setSourceVersionId(Ljava/lang/String;)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 100
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized getNextCopyPartRequest()Lcom/amazonaws/services/s3/model/CopyPartRequest;
    .locals 8

    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->optimalPartSize:J

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->remainingBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 65
    new-instance v2, Lcom/amazonaws/services/s3/model/CopyPartRequest;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/CopyPartRequest;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 66
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withSourceBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 67
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withSourceKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->uploadId:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->partNumber:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->partNumber:I

    .line 69
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withPartNumber(I)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 71
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withDestinationBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 72
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withDestinationKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 73
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withSourceVersionId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->offset:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 74
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withFirstByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->offset:J

    add-long/2addr v4, v0

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 75
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withLastByte(Ljava/lang/Long;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 76
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getSourceSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withSourceSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->copyObjectRequest:Lcom/amazonaws/services/s3/model/CopyObjectRequest;

    .line 77
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CopyObjectRequest;->getDestinationSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->withDestinationSSECustomerKey(Lcom/amazonaws/services/s3/model/SSECustomerKey;)Lcom/amazonaws/services/s3/model/CopyPartRequest;

    move-result-object v2

    .line 79
    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->setOtherMetadataInRequest(Lcom/amazonaws/services/s3/model/CopyPartRequest;)V

    .line 80
    iget-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->offset:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->offset:J

    .line 81
    iget-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->remainingBytes:J

    sub-long/2addr v3, v0

    iput-wide v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->remainingBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    .line 62
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasMoreRequests()Z
    .locals 4

    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyPartRequestFactory;->remainingBytes:J
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
