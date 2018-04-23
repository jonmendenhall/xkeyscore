.class public Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
.super Ljava/lang/Object;
.source "GenerateDataKeyResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ciphertextBlob:Ljava/nio/ByteBuffer;

.field private keyId:Ljava/lang/String;

.field private plaintext:Ljava/nio/ByteBuffer;


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

    .line 269
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;

    if-nez v2, :cond_2

    return v1

    .line 271
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;

    .line 273
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

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

    .line 275
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 276
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 278
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

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

    .line 280
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 281
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 283
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

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

    .line 285
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getCiphertextBlob()Ljava/nio/ByteBuffer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaintext()Ljava/nio/ByteBuffer;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->plaintext:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 256
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 257
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 258
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setCiphertextBlob(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setPlaintext(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->plaintext:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CiphertextBlob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plaintext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withPlaintext(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->plaintext:Ljava/nio/ByteBuffer;

    return-object p0
.end method
