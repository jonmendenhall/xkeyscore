.class public Lcom/amazonaws/services/s3/model/S3ObjectId;
.super Ljava/lang/Object;
.source "S3ObjectId.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final bucket:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getBucket()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->bucket:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->key:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3ObjectIdBuilder;->getVersionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->versionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->bucket:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->key:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->versionId:Ljava/lang/String;

    return-void

    .line 48
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bucket and key must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public instructionFileId()Lcom/amazonaws/services/s3/model/InstructionFileId;
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/S3ObjectId;->instructionFileId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object v0

    return-object v0
.end method

.method public instructionFileId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "instruction"

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v0, Lcom/amazonaws/services/s3/model/InstructionFileId;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->bucket:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->versionId:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazonaws/services/s3/model/InstructionFileId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->bucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/S3ObjectId;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
