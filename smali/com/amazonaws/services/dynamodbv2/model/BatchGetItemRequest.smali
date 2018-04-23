.class public Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "BatchGetItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private requestItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private returnConsumedCapacity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
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
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;)V"
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 467
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setRequestItems(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;",
            "Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;",
            ")V"
        }
    .end annotation

    .line 873
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 874
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setRequestItems(Ljava/util/Map;)V

    .line 875
    invoke-virtual {p2}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setReturnConsumedCapacity(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 669
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 670
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setRequestItems(Ljava/util/Map;)V

    .line 671
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->setReturnConsumedCapacity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRequestItemsEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;
    .locals 2

    .line 1997
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
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

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearRequestItemsEntries()Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 2014
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

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

    .line 2446
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;

    if-nez v2, :cond_2

    return v1

    .line 2448
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;

    .line 2450
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

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

    .line 2452
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2453
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 2455
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 2457
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2458
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getRequestItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;"
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 2090
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 2431
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 2434
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v0

    .line 2435
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
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
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;)V"
        }
    .end annotation

    .line 1507
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 2321
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 2165
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 2416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2417
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 2421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRequestItems(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;"
        }
    .end annotation

    .line 1830
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->requestItems:Ljava/util/Map;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;
    .locals 0

    .line 2402
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;
    .locals 0

    .line 2245
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/BatchGetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method
