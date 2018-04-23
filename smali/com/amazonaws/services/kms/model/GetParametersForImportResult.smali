.class public Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
.super Ljava/lang/Object;
.source "GetParametersForImportResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private importToken:Ljava/nio/ByteBuffer;

.field private keyId:Ljava/lang/String;

.field private parametersValidTo:Ljava/util/Date;

.field private publicKey:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 360
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;

    if-nez v2, :cond_2

    return v1

    .line 362
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;

    .line 364
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 366
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 368
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 370
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 371
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 373
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_5

    :cond_c
    move v3, v1

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 375
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 378
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_7

    :cond_10
    move v3, v1

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 380
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getImportToken()Ljava/nio/ByteBuffer;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->importToken:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getParametersValidTo()Ljava/util/Date;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->parametersValidTo:Ljava/util/Date;

    return-object v0
.end method

.method public getPublicKey()Ljava/nio/ByteBuffer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 346
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 347
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 349
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method

.method public setImportToken(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->importToken:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setParametersValidTo(Ljava/util/Date;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->parametersValidTo:Ljava/util/Date;

    return-void
.end method

.method public setPublicKey(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->publicKey:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParametersValidTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withImportToken(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->importToken:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withParametersValidTo(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->parametersValidTo:Ljava/util/Date;

    return-object p0
.end method

.method public withPublicKey(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object p0
.end method
