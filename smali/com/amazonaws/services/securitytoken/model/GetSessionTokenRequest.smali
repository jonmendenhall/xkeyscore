.class public Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetSessionTokenRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private durationSeconds:Ljava/lang/Integer;

.field private serialNumber:Ljava/lang/String;

.field private tokenCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
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

    .line 535
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    if-nez v2, :cond_2

    return v1

    .line 537
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    .line 539
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

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

    .line 541
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 542
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 544
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

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

    .line 546
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 547
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 549
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

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

    .line 551
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 552
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCode()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 521
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 523
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 524
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setDurationSeconds(Ljava/lang/Integer;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setTokenCode(Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DurationSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SerialNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TokenCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSerialNumber(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withTokenCode(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-object p0
.end method
