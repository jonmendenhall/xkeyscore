.class public Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenerateDataKeyWithoutPlaintextRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private encryptionContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private grantTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyId:Ljava/lang/String;

.field private keySpec:Ljava/lang/String;

.field private numberOfBytes:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->grantTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEncryptionContextEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicated keys ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearEncryptionContextEntries()Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 1

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 864
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;

    if-nez v2, :cond_2

    return v1

    .line 866
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;

    .line 868
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

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

    .line 870
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 872
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

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

    .line 874
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 875
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 877
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

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

    .line 879
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 881
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

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

    .line 883
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 884
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 886
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_9

    :cond_14
    move v3, v1

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 888
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 889
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getEncryptionContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    return-object v0
.end method

.method public getGrantTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->grantTokens:Ljava/util/List;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySpec()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keySpec:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfBytes()Ljava/lang/Integer;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->numberOfBytes:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 846
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 848
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 849
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 851
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 853
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public setEncryptionContext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    return-void
.end method

.method public setGrantTokens(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 741
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->grantTokens:Ljava/util/List;

    return-void

    .line 745
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->grantTokens:Ljava/util/List;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setKeySpec(Lcom/amazonaws/services/kms/model/DataKeySpec;)V
    .locals 0

    .line 588
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keySpec:Ljava/lang/String;

    return-void
.end method

.method public setKeySpec(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keySpec:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfBytes(Ljava/lang/Integer;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->numberOfBytes:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 826
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberOfBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;"
        }
    .end annotation

    .line 454
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->encryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public withGrantTokens(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;"
        }
    .end annotation

    .line 812
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->setGrantTokens(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrantTokens([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 4

    .line 775
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->grantTokens:Ljava/util/List;

    .line 778
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 779
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->grantTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeySpec(Lcom/amazonaws/services/kms/model/DataKeySpec;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 0

    .line 614
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->keySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withNumberOfBytes(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;->numberOfBytes:Ljava/lang/Integer;

    return-object p0
.end method
