.class public Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GenerateDataKeyRequest.java"

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

    .line 99
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->grantTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEncryptionContextEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
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

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearEncryptionContextEntries()Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 1

    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

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

    .line 917
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    if-nez v2, :cond_2

    return v1

    .line 919
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    .line 921
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

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

    .line 923
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 925
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

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

    .line 927
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 928
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 930
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

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

    .line 932
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 933
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 935
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

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

    .line 937
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 939
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

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

    .line 941
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 942
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

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

    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

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

    .line 769
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->grantTokens:Ljava/util/List;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySpec()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keySpec:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfBytes()Ljava/lang/Integer;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->numberOfBytes:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 899
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 901
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 903
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 904
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 906
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

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

    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

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

    .line 795
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->grantTokens:Ljava/util/List;

    return-void

    .line 799
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->grantTokens:Ljava/util/List;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setKeySpec(Lcom/amazonaws/services/kms/model/DataKeySpec;)V
    .locals 0

    .line 717
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keySpec:Ljava/lang/String;

    return-void
.end method

.method public setKeySpec(Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keySpec:Ljava/lang/String;

    return-void
.end method

.method public setNumberOfBytes(Ljava/lang/Integer;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->numberOfBytes:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberOfBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getNumberOfBytes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->encryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public withGrantTokens(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;"
        }
    .end annotation

    .line 865
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->setGrantTokens(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrantTokens([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 4

    .line 829
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->grantTokens:Ljava/util/List;

    .line 832
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 833
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->grantTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeySpec(Lcom/amazonaws/services/kms/model/DataKeySpec;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 0

    .line 743
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->keySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withNumberOfBytes(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->numberOfBytes:Ljava/lang/Integer;

    return-object p0
.end method
