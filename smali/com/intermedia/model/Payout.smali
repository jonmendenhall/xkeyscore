.class public Lcom/intermedia/model/Payout;
.super Ljava/lang/Object;
.source "Payout.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private payoutId:J

.field private paypalUserId:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private status:Lcom/intermedia/model/PayoutState;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "data"

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "payoutId"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "status"

    .line 65
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "amount"

    .line 66
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    iput-wide v0, p0, Lcom/intermedia/model/Payout;->payoutId:J

    const-string v0, "targetEmail"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/Payout;->email:Ljava/lang/String;

    const-string v0, "targetPhone"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/Payout;->phone:Ljava/lang/String;

    const-string v0, "targetUserId"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/model/Payout;->paypalUserId:Ljava/lang/String;

    .line 73
    invoke-static {v2}, Lcom/intermedia/model/PayoutState;->valueOf(I)Lcom/intermedia/model/PayoutState;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/model/Payout;->status:Lcom/intermedia/model/PayoutState;

    .line 74
    iput-object v3, p0, Lcom/intermedia/model/Payout;->amount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 51
    instance-of p1, p1, Lcom/intermedia/model/Payout;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Payout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Payout;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Payout;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPayoutId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Payout;->getPayoutId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Payout;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Payout;->getPhone()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getStatus()Lcom/intermedia/model/PayoutState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Payout;->getStatus()Lcom/intermedia/model/PayoutState;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Payout;->getAmount()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPaypalUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Payout;->getPaypalUserId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_4
    return v2

    :cond_d
    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/intermedia/model/Payout;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/intermedia/model/Payout;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPayoutId()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/intermedia/model/Payout;->payoutId:J

    return-wide v0
.end method

.method public getPaypalUserId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/intermedia/model/Payout;->paypalUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/intermedia/model/Payout;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/intermedia/model/PayoutState;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/intermedia/model/Payout;->status:Lcom/intermedia/model/PayoutState;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPayoutId()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getEmail()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPhone()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getStatus()Lcom/intermedia/model/PayoutState;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getAmount()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPaypalUserId()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/intermedia/model/Payout;->amount:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/intermedia/model/Payout;->email:Ljava/lang/String;

    return-void
.end method

.method public setPayoutId(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/intermedia/model/Payout;->payoutId:J

    return-void
.end method

.method public setPaypalUserId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/intermedia/model/Payout;->paypalUserId:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/intermedia/model/Payout;->phone:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/intermedia/model/PayoutState;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/intermedia/model/Payout;->status:Lcom/intermedia/model/PayoutState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Payout(payoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPayoutId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getStatus()Lcom/intermedia/model/PayoutState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paypalUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Payout;->getPaypalUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
