.class public Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "InitiateMultipartUploadResult.java"


# instance fields
.field private abortDate:Ljava/util/Date;

.field private abortRuleId:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private key:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbortDate()Ljava/util/Date;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->abortDate:Ljava/util/Date;

    return-object v0
.end method

.method public getAbortRuleId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->abortRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->isRequesterCharged:Z

    return v0
.end method

.method public setAbortDate(Ljava/util/Date;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->abortDate:Ljava/util/Date;

    return-void
.end method

.method public setAbortRuleId(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->abortRuleId:Ljava/lang/String;

    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->isRequesterCharged:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->uploadId:Ljava/lang/String;

    return-void
.end method
