.class public Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
.super Ljava/lang/Object;
.source "GetItemResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

.field private item:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
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

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearItemEntries()Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

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

    .line 259
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;

    if-nez v2, :cond_2

    return v1

    .line 261
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;

    .line 263
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

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

    .line 265
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 267
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

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

    .line 269
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 270
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object v0
.end method

.method public getItem()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 248
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-void
.end method

.method public setItem(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getItem()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object p0
.end method

.method public withItem(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemResult;->item:Ljava/util/Map;

    return-object p0
.end method
