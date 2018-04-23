.class public Lcom/amazonaws/services/s3/model/MultipartUpload;
.super Ljava/lang/Object;
.source "MultipartUpload.java"


# instance fields
.field private initiated:Ljava/util/Date;

.field private initiator:Lcom/amazonaws/services/s3/model/Owner;

.field private key:Ljava/lang/String;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field private storageClass:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitiated()Ljava/util/Date;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiated:Ljava/util/Date;

    return-object v0
.end method

.method public getInitiator()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setInitiated(Ljava/util/Date;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiated:Ljava/util/Date;

    return-void
.end method

.method public setInitiator(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->initiator:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->key:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/MultipartUpload;->uploadId:Ljava/lang/String;

    return-void
.end method
