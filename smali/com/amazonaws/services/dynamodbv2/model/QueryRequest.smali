.class public Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "QueryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributesToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private conditionalOperator:Ljava/lang/String;

.field private consistentRead:Ljava/lang/Boolean;

.field private exclusiveStartKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private expressionAttributeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expressionAttributeValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private filterExpression:Ljava/lang/String;

.field private indexName:Ljava/lang/String;

.field private keyConditionExpression:Ljava/lang/String;

.field private keyConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;

.field private projectionExpression:Ljava/lang/String;

.field private queryFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private returnConsumedCapacity:Ljava/lang/String;

.field private scanIndexForward:Ljava/lang/Boolean;

.field private select:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 946
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 947
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->setTableName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExclusiveStartKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 2

    .line 5295
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    .line 5298
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5299
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

    .line 5301
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 2

    .line 7443
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 7444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    .line 7446
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7447
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

    .line 7449
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeValuesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 2

    .line 7720
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 7721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    .line 7723
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7724
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

    .line 7726
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addKeyConditionsEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/Condition;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 2

    .line 3840
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    .line 3843
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3844
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

    .line 3846
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addQueryFilterEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/Condition;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 2

    .line 4513
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4514
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    .line 4516
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4517
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

    .line 4519
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExclusiveStartKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 1

    const/4 v0, 0x0

    .line 5312
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 1

    const/4 v0, 0x0

    .line 7460
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeValuesEntries()Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 1

    const/4 v0, 0x0

    .line 7737
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public clearKeyConditionsEntries()Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 1

    const/4 v0, 0x0

    .line 3857
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    return-object p0
.end method

.method public clearQueryFilterEntries()Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 1

    const/4 v0, 0x0

    .line 4530
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

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

    .line 7843
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;

    if-nez v2, :cond_2

    return v1

    .line 7845
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;

    .line 7847
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

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

    .line 7849
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 7850
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 7852
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

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

    .line 7854
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 7855
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 7857
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

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

    .line 7859
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 7861
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

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

    .line 7863
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 7864
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 7866
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

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

    .line 7868
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 7870
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_b

    :cond_18
    move v3, v1

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 7872
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 7873
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 7875
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v0

    goto :goto_d

    :cond_1c
    move v3, v1

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 7877
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 7878
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 7880
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v0

    goto :goto_f

    :cond_20
    move v3, v1

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 7882
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 7883
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 7885
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v0

    goto :goto_11

    :cond_24
    move v3, v1

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 7887
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 7888
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 7890
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v0

    goto :goto_13

    :cond_28
    move v3, v1

    :goto_13
    xor-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v1

    .line 7892
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 7893
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 7895
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2b

    move v2, v0

    goto :goto_14

    :cond_2b
    move v2, v1

    :goto_14
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v0

    goto :goto_15

    :cond_2c
    move v3, v1

    :goto_15
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2d

    return v1

    .line 7897
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 7898
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 7900
    :cond_2e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    move v2, v0

    goto :goto_16

    :cond_2f
    move v2, v1

    :goto_16
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_30

    move v3, v0

    goto :goto_17

    :cond_30
    move v3, v1

    :goto_17
    xor-int/2addr v2, v3

    if-eqz v2, :cond_31

    return v1

    .line 7902
    :cond_31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 7903
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 7905
    :cond_32
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    move v2, v0

    goto :goto_18

    :cond_33
    move v2, v1

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move v3, v0

    goto :goto_19

    :cond_34
    move v3, v1

    :goto_19
    xor-int/2addr v2, v3

    if-eqz v2, :cond_35

    return v1

    .line 7907
    :cond_35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 7908
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    return v1

    .line 7910
    :cond_36
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    move v2, v0

    goto :goto_1a

    :cond_37
    move v2, v1

    :goto_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    move v3, v0

    goto :goto_1b

    :cond_38
    move v3, v1

    :goto_1b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_39

    return v1

    .line 7912
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 7913
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 7915
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3b

    move v2, v0

    goto :goto_1c

    :cond_3b
    move v2, v1

    :goto_1c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    move v3, v0

    goto :goto_1d

    :cond_3c
    move v3, v1

    :goto_1d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3d

    return v1

    .line 7917
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 7918
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    return v1

    .line 7920
    :cond_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3f

    move v2, v0

    goto :goto_1e

    :cond_3f
    move v2, v1

    .line 7921
    :goto_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_40

    move v3, v0

    goto :goto_1f

    :cond_40
    move v3, v1

    :goto_1f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_41

    return v1

    .line 7923
    :cond_41
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 7924
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    return v1

    .line 7926
    :cond_42
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_43

    move v2, v0

    goto :goto_20

    :cond_43
    move v2, v1

    .line 7927
    :goto_20
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_44

    move v3, v0

    goto :goto_21

    :cond_44
    move v3, v1

    :goto_21
    xor-int/2addr v2, v3

    if-eqz v2, :cond_45

    return v1

    .line 7929
    :cond_45
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 7930
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    return v1

    :cond_46
    return v0
.end method

.method public getAttributesToGet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConditionalOperator()Ljava/lang/String;
    .locals 1

    .line 4620
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->conditionalOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 2444
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExclusiveStartKey()Ljava/util/Map;
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

    .line 5213
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    return-object v0
.end method

.method public getExpressionAttributeNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7027
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object v0
.end method

.method public getExpressionAttributeValues()Ljava/util/Map;
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

    .line 7528
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object v0
.end method

.method public getFilterExpression()Ljava/lang/String;
    .locals 1

    .line 5918
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->filterExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyConditionExpression()Ljava/lang/String;
    .locals 1

    .line 6309
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyConditions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;"
        }
    .end annotation

    .line 2883
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProjectionExpression()Ljava/lang/String;
    .locals 1

    .line 5752
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->projectionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryFilter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;"
        }
    .end annotation

    .line 4039
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 5388
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getScanIndexForward()Ljava/lang/Boolean;
    .locals 1

    .line 5086
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSelect()Ljava/lang/String;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->select:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 7795
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 7796
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7797
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7799
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7800
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7802
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7804
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7806
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7808
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7810
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7812
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7815
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 7816
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7818
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7820
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7823
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v3

    .line 7824
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7827
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    .line 7828
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 7831
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    .line 7832
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v2, v1

    return v2
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 2416
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isScanIndexForward()Ljava/lang/Boolean;
    .locals 1

    .line 5039
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributesToGet(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2051
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->attributesToGet:Ljava/util/List;

    return-void

    .line 2055
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->attributesToGet:Ljava/util/List;

    return-void
.end method

.method public setConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)V
    .locals 0

    .line 4896
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Ljava/lang/String;)V
    .locals 0

    .line 4710
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0

    .line 2473
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-void
.end method

.method public setExclusiveStartKey(Ljava/util/Map;)V
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

    .line 5238
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    return-void
.end method

.method public setExpressionAttributeNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7186
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    return-void
.end method

.method public setExpressionAttributeValues(Ljava/util/Map;)V
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

    .line 7598
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    return-void
.end method

.method public setFilterExpression(Ljava/lang/String;)V
    .locals 0

    .line 5974
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->filterExpression:Ljava/lang/String;

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setKeyConditionExpression(Ljava/lang/String;)V
    .locals 0

    .line 6586
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditionExpression:Ljava/lang/String;

    return-void
.end method

.method public setKeyConditions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)V"
        }
    .end annotation

    .line 3261
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 2342
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setProjectionExpression(Ljava/lang/String;)V
    .locals 0

    .line 5804
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->projectionExpression:Ljava/lang/String;

    return-void
.end method

.method public setQueryFilter(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)V"
        }
    .end annotation

    .line 4223
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 5619
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 5463
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setScanIndexForward(Ljava/lang/Boolean;)V
    .locals 0

    .line 5134
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-void
.end method

.method public setSelect(Lcom/amazonaws/services/dynamodbv2/model/Select;)V
    .locals 0

    .line 1700
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Select;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->select:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Ljava/lang/String;)V
    .locals 0

    .line 1384
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->select:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 7750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 7751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7752
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7754
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7756
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7758
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7760
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7762
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7764
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyConditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7766
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 7767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueryFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7768
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 7769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7770
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 7771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanIndexForward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7772
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 7773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExclusiveStartKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7774
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 7775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7776
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 7777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProjectionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7778
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 7779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7780
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 7781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyConditionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7782
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 7783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7784
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 7785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string/jumbo v1, "}"

    .line 7786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;"
        }
    .end annotation

    .line 2261
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->setAttributesToGet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 4

    .line 2155
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2156
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->attributesToGet:Ljava/util/List;

    .line 2158
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2159
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->attributesToGet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 4991
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 4805
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 2507
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withExclusiveStartKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;"
        }
    .end annotation

    .line 5269
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->exclusiveStartKey:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;"
        }
    .end annotation

    .line 7351
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeValues(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;"
        }
    .end annotation

    .line 7673
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public withFilterExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 6035
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->filterExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 1075
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->indexName:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyConditionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 6868
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyConditions(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;"
        }
    .end annotation

    .line 3644
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->keyConditions:Ljava/util/Map;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 2387
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withProjectionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 5861
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->projectionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withQueryFilter(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;"
        }
    .end annotation

    .line 4412
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->queryFilter:Ljava/util/Map;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 5699
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 5543
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withScanIndexForward(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 5187
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSelect(Lcom/amazonaws/services/dynamodbv2/model/Select;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 1860
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Select;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->select:Ljava/lang/String;

    return-object p0
.end method

.method public withSelect(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->select:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
