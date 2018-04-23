.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CompleteMultipartUploadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterPays:Z

.field private key:Ljava/lang/String;

.field private partETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPartETags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setPartETags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays:Z

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withPartETags(Ljava/util/Collection;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/UploadPartResult;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 245
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withPartETags(Ljava/util/List;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/PartETag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->setPartETags(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs withPartETags([Lcom/amazonaws/services/s3/model/UploadPartResult;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 6

    .line 227
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 228
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->partETags:Ljava/util/List;

    new-instance v4, Lcom/amazonaws/services/s3/model/PartETag;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getPartNumber()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/services/s3/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->setRequesterPays(Z)V

    return-object p0
.end method

.method public withUploadId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object p0
.end method
