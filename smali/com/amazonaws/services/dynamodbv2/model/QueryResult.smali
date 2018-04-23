.class public Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

.field private count:Ljava/lang/Integer;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastEvaluatedKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private scannedCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLastEvaluatedKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
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

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearLastEvaluatedKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 1

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

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

    .line 707
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;

    if-nez v2, :cond_2

    return v1

    .line 709
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;

    .line 711
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

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

    .line 713
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 715
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

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

    .line 717
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 719
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

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

    .line 721
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 722
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 724
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

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

    .line 726
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 727
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 729
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

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

    .line 731
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 732
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLastEvaluatedKey()Ljava/util/Map;
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

    .line 438
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    return-object v0
.end method

.method public getScannedCount()Ljava/lang/Integer;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->scannedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 689
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 690
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 692
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 694
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 696
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public setConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->count:Ljava/lang/Integer;

    return-void
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->items:Ljava/util/List;

    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->items:Ljava/util/List;

    return-void
.end method

.method public setLastEvaluatedKey(Ljava/util/Map;)V
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

    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    return-void
.end method

.method public setScannedCount(Ljava/lang/Integer;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->scannedCount:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScannedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getScannedCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastEvaluatedKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getLastEvaluatedKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getConsumedCapacity()Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->consumedCapacity:Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    return-object p0
.end method

.method public withCount(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public withItems(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;>;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->setItems(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withItems([Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->getItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->items:Ljava/util/List;

    .line 164
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 165
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withLastEvaluatedKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->lastEvaluatedKey:Ljava/util/Map;

    return-object p0
.end method

.method public withScannedCount(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->scannedCount:Ljava/lang/Integer;

    return-object p0
.end method
