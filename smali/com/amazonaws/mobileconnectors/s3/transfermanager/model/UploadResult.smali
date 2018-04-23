.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->key:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;->versionId:Ljava/lang/String;

    return-void
.end method
