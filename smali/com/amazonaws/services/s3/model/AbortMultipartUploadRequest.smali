.class public Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AbortMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->isRequesterPays:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method
