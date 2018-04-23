.class public Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
.super Ljava/lang/Object;
.source "ItemCollectionMetrics.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private itemCollectionKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private sizeEstimateRangeGB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemCollectionKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
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

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearItemCollectionKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

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

    .line 332
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    if-nez v2, :cond_2

    return v1

    .line 334
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    .line 336
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

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

    .line 338
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 339
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 341
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

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

    .line 343
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 344
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getItemCollectionKey()Ljava/util/Map;
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

    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    return-object v0
.end method

.method public getSizeEstimateRangeGB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->sizeEstimateRangeGB:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 319
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setItemCollectionKey(Ljava/util/Map;)V
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

    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    return-void
.end method

.method public setSizeEstimateRangeGB(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->sizeEstimateRangeGB:Ljava/util/List;

    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->sizeEstimateRangeGB:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCollectionKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getItemCollectionKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SizeEstimateRangeGB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withItemCollectionKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->itemCollectionKey:Ljava/util/Map;

    return-object p0
.end method

.method public withSizeEstimateRangeGB(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;"
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->setSizeEstimateRangeGB(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSizeEstimateRangeGB([Ljava/lang/Double;)Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;
    .locals 4

    .line 246
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->getSizeEstimateRangeGB()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->sizeEstimateRangeGB:Ljava/util/List;

    .line 249
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 250
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;->sizeEstimateRangeGB:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
