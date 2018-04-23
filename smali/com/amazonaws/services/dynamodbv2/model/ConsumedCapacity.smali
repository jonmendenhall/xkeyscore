.class public Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
.super Ljava/lang/Object;
.source "ConsumedCapacity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private capacityUnits:Ljava/lang/Double;

.field private globalSecondaryIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;"
        }
    .end annotation
.end field

.field private localSecondaryIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/amazonaws/services/dynamodbv2/model/Capacity;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGlobalSecondaryIndexesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/Capacity;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
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

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addLocalSecondaryIndexesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/Capacity;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
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

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearGlobalSecondaryIndexesEntries()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 1

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    return-object p0
.end method

.method public clearLocalSecondaryIndexesEntries()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 1

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

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

    .line 453
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    if-nez v2, :cond_2

    return v1

    .line 455
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    .line 457
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

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

    .line 459
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 460
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 462
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

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

    .line 464
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 465
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 467
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

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

    .line 469
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/Capacity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 471
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

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

    .line 473
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 474
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 476
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

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

    .line 478
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 479
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getCapacityUnits()Ljava/lang/Double;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->capacityUnits:Ljava/lang/Double;

    return-object v0
.end method

.method public getGlobalSecondaryIndexes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    return-object v0
.end method

.method public getLocalSecondaryIndexes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    return-object v0
.end method

.method public getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->table:Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 432
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 434
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 435
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/Capacity;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 438
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public setCapacityUnits(Ljava/lang/Double;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->capacityUnits:Ljava/lang/Double;

    return-void
.end method

.method public setGlobalSecondaryIndexes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    return-void
.end method

.method public setLocalSecondaryIndexes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    return-void
.end method

.method public setTable(Lcom/amazonaws/services/dynamodbv2/model/Capacity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->table:Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalSecondaryIndexes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSecondaryIndexes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCapacityUnits(Ljava/lang/Double;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->capacityUnits:Ljava/lang/Double;

    return-object p0
.end method

.method public withGlobalSecondaryIndexes(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->globalSecondaryIndexes:Ljava/util/Map;

    return-object p0
.end method

.method public withLocalSecondaryIndexes(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Capacity;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->localSecondaryIndexes:Ljava/util/Map;

    return-object p0
.end method

.method public withTable(Lcom/amazonaws/services/dynamodbv2/model/Capacity;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->table:Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->tableName:Ljava/lang/String;

    return-object p0
.end method
