.class public Lcom/intermedia/model/method/PayoutStatus;
.super Ljava/lang/Object;
.source "PayoutStatus.java"


# instance fields
.field private amountPaid:Ljava/lang/String;

.field private amountPending:Ljava/lang/String;

.field private amountUnpaid:Ljava/lang/String;

.field private eligibleForPayout:Z

.field private hasPending:Z

.field private payoutsConnected:Z

.field private payoutsEmail:Ljava/lang/String;

.field private prizeTotal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "balance"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "eligibleForPayout"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intermedia/model/method/PayoutStatus;->eligibleForPayout:Z

    const-string v0, "hasPending"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intermedia/model/method/PayoutStatus;->hasPending:Z

    const-string v0, "payoutsConnected"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intermedia/model/method/PayoutStatus;->payoutsConnected:Z

    const-string v0, "paid"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->amountPaid:Ljava/lang/String;

    const-string v0, "pending"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->amountPending:Ljava/lang/String;

    const-string v0, "prizeTotal"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->prizeTotal:Ljava/lang/String;

    const-string v0, "unpaid"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->amountUnpaid:Ljava/lang/String;

    const-string v0, "payoutsEmail"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/model/method/PayoutStatus;->payoutsEmail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    instance-of p1, p1, Lcom/intermedia/model/method/PayoutStatus;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/method/PayoutStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/method/PayoutStatus;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/method/PayoutStatus;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isEligibleForPayout()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->isEligibleForPayout()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isHasPending()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->isHasPending()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isPayoutsConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->isPayoutsConnected()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getPayoutsEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->getPayoutsEmail()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountUnpaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->getAmountUnpaid()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPaid()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_2
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPending()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPending()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_3
    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getPrizeTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->getPrizeTotal()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_e

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    :goto_4
    return v2

    :cond_f
    return v0
.end method

.method public getAmountPaid()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->amountPaid:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountPending()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->amountPending:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountUnpaid()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->amountUnpaid:Ljava/lang/String;

    return-object v0
.end method

.method public getPayoutsEmail()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->payoutsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getPrizeTotal()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/intermedia/model/method/PayoutStatus;->prizeTotal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 16
    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isEligibleForPayout()Z

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x4f

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isHasPending()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isPayoutsConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getPayoutsEmail()Ljava/lang/String;

    move-result-object v1

    mul-int/2addr v0, v3

    const/16 v2, 0x2b

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountUnpaid()Ljava/lang/String;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPaid()Ljava/lang/String;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPending()Ljava/lang/String;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getPrizeTotal()Ljava/lang/String;

    move-result-object v1

    mul-int/2addr v0, v3

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public isEligibleForPayout()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/intermedia/model/method/PayoutStatus;->eligibleForPayout:Z

    return v0
.end method

.method public isHasPending()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/intermedia/model/method/PayoutStatus;->hasPending:Z

    return v0
.end method

.method public isPayoutsConnected()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/intermedia/model/method/PayoutStatus;->payoutsConnected:Z

    return v0
.end method

.method public setAmountPaid(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/method/PayoutStatus;->amountPaid:Ljava/lang/String;

    return-void
.end method

.method public setAmountPending(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/method/PayoutStatus;->amountPending:Ljava/lang/String;

    return-void
.end method

.method public setAmountUnpaid(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/method/PayoutStatus;->amountUnpaid:Ljava/lang/String;

    return-void
.end method

.method public setEligibleForPayout(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/intermedia/model/method/PayoutStatus;->eligibleForPayout:Z

    return-void
.end method

.method public setHasPending(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/intermedia/model/method/PayoutStatus;->hasPending:Z

    return-void
.end method

.method public setPayoutsConnected(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/intermedia/model/method/PayoutStatus;->payoutsConnected:Z

    return-void
.end method

.method public setPayoutsEmail(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/method/PayoutStatus;->payoutsEmail:Ljava/lang/String;

    return-void
.end method

.method public setPrizeTotal(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/method/PayoutStatus;->prizeTotal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayoutStatus(eligibleForPayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isEligibleForPayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isHasPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", payoutsConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->isPayoutsConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", payoutsEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getPayoutsEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountUnpaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountUnpaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountPaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amountPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getAmountPending()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prizeTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/method/PayoutStatus;->getPrizeTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
