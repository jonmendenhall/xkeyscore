.class public Lcom/intermedia/model/Gift;
.super Ljava/lang/Object;
.source "Gift.java"


# instance fields
.field private amount:I

.field dropID:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lcom/intermedia/model/Gift;
    .locals 3

    .line 26
    new-instance v0, Lcom/intermedia/model/Gift;

    invoke-direct {v0}, Lcom/intermedia/model/Gift;-><init>()V

    const-string v1, "giftDropId"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/intermedia/model/Gift;->dropID:I

    const-string v1, "itemType"

    const-string v2, "empty"

    .line 28
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/intermedia/model/Gift;->type:Ljava/lang/String;

    const-string v1, "itemAmount"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/intermedia/model/Gift;->amount:I

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    instance-of p1, p1, Lcom/intermedia/model/Gift;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Gift;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Gift;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Gift;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getDropID()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/Gift;->getDropID()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Gift;->getType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getAmount()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/Gift;->getAmount()I

    move-result p1

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getAmount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/intermedia/model/Gift;->amount:I

    return v0
.end method

.method public getDropID()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/intermedia/model/Gift;->dropID:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/intermedia/model/Gift;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getDropID()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getType()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v2, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getAmount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/intermedia/model/Gift;->amount:I

    return-void
.end method

.method public setDropID(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/intermedia/model/Gift;->dropID:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/intermedia/model/Gift;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gift(dropID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getDropID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Gift;->getAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
