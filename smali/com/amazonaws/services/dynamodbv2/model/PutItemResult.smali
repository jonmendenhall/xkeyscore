.class public Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
.super Ljava/lang/Object;
.source "PutItemResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

.field private itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttributesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
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

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearAttributesEntries()Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 1

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

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

    .line 545
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;

    if-nez v2, :cond_2

    return v1

    .line 547
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;

    .line 549
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

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

    .line 551
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 552
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 554
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

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

    .line 556
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 557
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 559
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

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

    .line 561
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 562
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getAttributes()Ljava/util/Map;
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

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object v0
.end method

.method public getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 529
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 531
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 534
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setAttributes(Ljava/util/Map;)V
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

    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    return-void
.end method

.method public setConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-void
.end method

.method public setItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCollectionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public withConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object p0
.end method

.method public withItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;)Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemResult;->itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    return-object p0
.end method
