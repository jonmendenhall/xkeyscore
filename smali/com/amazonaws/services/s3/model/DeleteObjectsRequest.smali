.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteObjectsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
    }
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private isRequesterPays:Z

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

.field private quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setBucketName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    return-object v0
.end method

.method public getMfa()Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->quiet:Z

    return v0
.end method

.method public isRequesterPays()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->isRequesterPays:Z

    return v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->mfa:Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->quiet:Z

    return-void
.end method

.method public setRequesterPays(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->isRequesterPays:Z

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKeys(Ljava/util/List;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs withKeys([Ljava/lang/String;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 5

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 250
    new-instance v4, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;

    invoke-direct {v4, v3}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setKeys(Ljava/util/List;)V

    return-object p0
.end method

.method public withMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setMfa(Lcom/amazonaws/services/s3/model/MultiFactorAuthentication;)V

    return-object p0
.end method

.method public withQuiet(Z)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setQuiet(Z)V

    return-object p0
.end method

.method public withRequesterPays(Z)Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;->setRequesterPays(Z)V

    return-object p0
.end method
