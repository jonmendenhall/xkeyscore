.class public Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetParametersForImportRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keyId:Ljava/lang/String;

.field private wrappingAlgorithm:Ljava/lang/String;

.field private wrappingKeySpec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

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

    .line 564
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;

    if-nez v2, :cond_2

    return v1

    .line 566
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;

    .line 568
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

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

    .line 570
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 572
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

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

    .line 574
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 575
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 577
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

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

    .line 579
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 580
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappingKeySpec()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingKeySpec:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 549
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 551
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 553
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setWrappingAlgorithm(Lcom/amazonaws/services/kms/model/AlgorithmSpec;)V
    .locals 0

    .line 380
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setWrappingAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setWrappingKeySpec(Lcom/amazonaws/services/kms/model/WrappingKeySpec;)V
    .locals 0

    .line 495
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingKeySpec:Ljava/lang/String;

    return-void
.end method

.method public setWrappingKeySpec(Ljava/lang/String;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingKeySpec:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WrappingAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WrappingKeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->getWrappingKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withWrappingAlgorithm(Lcom/amazonaws/services/kms/model/AlgorithmSpec;)Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;
    .locals 0

    .line 412
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/AlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withWrappingAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withWrappingKeySpec(Lcom/amazonaws/services/kms/model/WrappingKeySpec;)Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;
    .locals 0

    .line 519
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingKeySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withWrappingKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;->wrappingKeySpec:Ljava/lang/String;

    return-object p0
.end method
