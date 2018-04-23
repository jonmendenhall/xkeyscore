.class public Lcom/amazonaws/services/s3/model/S3Object;
.super Ljava/lang/Object;
.source "S3Object.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterCharged:Z

.field private key:Ljava/lang/String;

.field private metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

.field private transient objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

.field private redirectLocation:Ljava/lang/String;

.field private taggingCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V

    :cond_0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-object v0
.end method

.method public getRedirectLocation()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->redirectLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTaggingCount()Ljava/lang/Integer;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->taggingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/S3Object;->isRequesterCharged:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->key:Ljava/lang/String;

    return-void
.end method

.method public setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    return-void
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 2

    .line 129
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->objectContent:Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 130
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-void
.end method

.method public setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->metadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    return-void
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->redirectLocation:Ljava/lang/String;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->isRequesterCharged:Z

    return-void
.end method

.method public setTaggingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3Object;->taggingCount:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Object [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<Unknown>"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3Object;->bucketName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
