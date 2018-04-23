.class public Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListKeyPoliciesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keyId:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private marker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
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

    .line 452
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;

    if-nez v2, :cond_2

    return v1

    .line 454
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;

    .line 456
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

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

    .line 458
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 460
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

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

    .line 462
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 464
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

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

    .line 466
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

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

    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 439
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 440
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;->marker:Ljava/lang/String;

    return-object p0
.end method
