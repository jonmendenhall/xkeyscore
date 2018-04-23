.class public Lcom/amazonaws/services/s3/model/S3ObjectSummary;
.super Ljava/lang/Object;
.source "S3ObjectSummary.java"


# instance fields
.field protected bucketName:Ljava/lang/String;

.field protected eTag:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected lastModified:Ljava/util/Date;

.field protected owner:Lcom/amazonaws/services/s3/model/Owner;

.field protected size:J

.field protected storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->size:J

    return-wide v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->lastModified:Ljava/util/Date;

    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->size:J

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->storageClass:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3ObjectSummary{bucketName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastModified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", storageClass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->storageClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
