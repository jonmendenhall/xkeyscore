.class public Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "BatchWriteItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private requestItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private returnConsumedCapacity:Ljava/lang/String;

.field private returnItemCollectionMetrics:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;>;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 311
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->setRequestItems(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addRequestItemsEntry(Ljava/lang/String;Ljava/util/List;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
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

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearRequestItemsEntries()Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 728
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

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

    .line 1305
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;

    if-nez v2, :cond_2

    return v1

    .line 1307
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;

    .line 1309
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

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

    .line 1311
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1312
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1314
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 1316
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1317
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1319
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    .line 1320
    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

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

    .line 1322
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1323
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object p1

    .line 1324
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    .line 1323
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getRequestItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;>;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnItemCollectionMetrics()Ljava/lang/String;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1286
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 1289
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 1290
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 1293
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 1294
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public setRequestItems(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;>;)V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 1035
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)V
    .locals 0

    .line 1224
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Ljava/lang/String;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnItemCollectionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 1276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRequestItems(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
            ">;>;)",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->requestItems:Ljava/util/Map;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 0

    .line 1116
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 0

    .line 1255
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchWriteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method
