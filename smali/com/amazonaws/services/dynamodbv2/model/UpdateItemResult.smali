.class public Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
.super Ljava/lang/Object;
.source "UpdateItemResult.java"

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
.method public addAttributesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
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

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearAttributesEntries()Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 1

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

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

    .line 361
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;

    if-nez v2, :cond_2

    return v1

    .line 363
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;

    .line 365
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

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

    .line 367
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 368
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 370
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

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

    .line 372
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 373
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 375
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

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

    .line 377
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 378
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

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

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object v0
.end method

.method public getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 345
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 347
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 350
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

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

    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    return-void
.end method

.method public setConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-void
.end method

.method public setItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCollectionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->getItemCollectionMetrics()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public withConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object p0
.end method

.method public withItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemResult;->itemCollectionMetrics:Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    return-object p0
.end method
