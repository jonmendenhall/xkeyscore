.class public Lcom/amazonaws/services/kms/model/ReEncryptRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ReEncryptRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ciphertextBlob:Ljava/nio/ByteBuffer;

.field private destinationEncryptionContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private destinationKeyId:Ljava/lang/String;

.field private grantTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceEncryptionContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDestinationEncryptionContextEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
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

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addSourceEncryptionContextEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
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

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearDestinationEncryptionContextEntries()Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 1

    const/4 v0, 0x0

    .line 561
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public clearSourceEncryptionContextEntries()Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

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

    .line 741
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    if-nez v2, :cond_2

    return v1

    .line 743
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    .line 745
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

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

    .line 747
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 748
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 750
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

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

    .line 752
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 753
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 755
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

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

    .line 757
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 758
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 760
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    .line 761
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

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

    .line 763
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 764
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    .line 765
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    .line 764
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 767
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

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

    .line 769
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 770
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getCiphertextBlob()Ljava/nio/ByteBuffer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDestinationEncryptionContext()Ljava/util/Map;
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

    .line 490
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-object v0
.end method

.method public getDestinationKeyId()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationKeyId:Ljava/lang/String;

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

    .line 587
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-object v0
.end method

.method public getSourceEncryptionContext()Ljava/util/Map;
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

    .line 183
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 718
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 721
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    .line 722
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 724
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 727
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    .line 728
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 730
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public setCiphertextBlob(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setDestinationEncryptionContext(Ljava/util/Map;)V
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

    .line 504
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-void
.end method

.method public setDestinationKeyId(Ljava/lang/String;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationKeyId:Ljava/lang/String;

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

    .line 613
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-void
.end method

.method public setSourceEncryptionContext(Ljava/util/Map;)V
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

    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CiphertextBlob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceEncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DestinationKeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DestinationEncryptionContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrantTokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withDestinationEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public withDestinationKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationKeyId:Ljava/lang/String;

    return-object p0
.end method

.method public withGrantTokens(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 683
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->setGrantTokens(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrantTokens([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 4

    .line 647
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    .line 650
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 651
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSourceEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-object p0
.end method
