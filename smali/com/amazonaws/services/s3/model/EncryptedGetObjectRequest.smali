.class public Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
.super Lcom/amazonaws/services/s3/model/GetObjectRequest;
.source "EncryptedGetObjectRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private instructionFileSuffix:Ljava/lang/String;

.field private keyWrapExpected:Z

.field private supplemental:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 44
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->supplemental:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->supplemental:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 67
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->setKey(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->setVersionId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->supplemental:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method


# virtual methods
.method public getExtraMaterialDescription()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->supplemental:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-object v0
.end method

.method public getInstructionFileSuffix()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->instructionFileSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyWrapExpected()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->keyWrapExpected:Z

    return v0
.end method

.method public setExtraMaterialDescription(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)V
    .locals 0

    if-nez p1, :cond_0

    .line 101
    sget-object p1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->supplemental:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    return-void
.end method

.method public setInstructionFileSuffix(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->instructionFileSuffix:Ljava/lang/String;

    return-void
.end method

.method public setKeyWrapExpected(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->keyWrapExpected:Z

    return-void
.end method

.method public withExtraMaterialsDescription(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->setExtraMaterialDescription(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)V

    return-object p0
.end method

.method public withExtraMaterialsDescription(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->setExtraMaterialDescription(Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;)V

    return-object p0
.end method

.method public withInstructionFileSuffix(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->instructionFileSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyWrapExpected(Z)Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->keyWrapExpected:Z

    return-object p0
.end method
