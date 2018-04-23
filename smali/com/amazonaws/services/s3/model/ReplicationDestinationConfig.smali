.class public Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
.super Ljava/lang/Object;
.source "ReplicationDestinationConfig.java"


# instance fields
.field private bucketARN:Ljava/lang/String;

.field private storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketARN()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->bucketARN:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketARN(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bucket name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->bucketARN:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 81
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public withBucketARN(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setBucketARN(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 104
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method

.method public withStorageClass(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->setStorageClass(Ljava/lang/String;)V

    return-object p0
.end method
