.class public Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ScanRequest.java"

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

.field private limit:Ljava/lang/Integer;

.field private projectionExpression:Ljava/lang/String;

.field private returnConsumedCapacity:Ljava/lang/String;

.field private scanFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private segment:Ljava/lang/Integer;

.field private select:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private totalSegments:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 625
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 626
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setTableName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExclusiveStartKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 2

    .line 2841
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

    .line 2844
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2845
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

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 2

    .line 4482
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

    .line 4485
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4486
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

    .line 4488
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeValuesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 2

    .line 4759
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    .line 4762
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4763
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

    .line 4765
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addScanFilterEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/Condition;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 2

    .line 2223
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    .line 2226
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2227
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

    .line 2229
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExclusiveStartKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 1

    const/4 v0, 0x0

    .line 2858
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 1

    const/4 v0, 0x0

    .line 4499
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeValuesEntries()Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 1

    const/4 v0, 0x0

    .line 4776
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public clearScanFilterEntries()Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 1

    const/4 v0, 0x0

    .line 2240
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

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

    .line 5144
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;

    if-nez v2, :cond_2

    return v1

    .line 5146
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;

    .line 5148
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

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

    .line 5150
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5151
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 5153
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

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

    .line 5155
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 5156
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 5158
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

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

    .line 5160
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 5161
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 5163
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

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

    .line 5165
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 5167
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

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

    .line 5169
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 5171
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

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

    .line 5173
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 5174
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 5176
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

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

    .line 5178
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 5179
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 5181
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

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

    .line 5183
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 5184
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 5186
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 5188
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 5189
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 5191
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

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

    .line 5193
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 5194
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 5196
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2b

    move v2, v0

    goto :goto_14

    :cond_2b
    move v2, v1

    :goto_14
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

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

    .line 5198
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 5200
    :cond_2e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    move v2, v0

    goto :goto_16

    :cond_2f
    move v2, v1

    :goto_16
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

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

    .line 5202
    :cond_31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 5203
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 5205
    :cond_32
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    move v2, v0

    goto :goto_18

    :cond_33
    move v2, v1

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

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

    .line 5207
    :cond_35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 5208
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    return v1

    .line 5210
    :cond_36
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_37

    move v2, v0

    goto :goto_1a

    :cond_37
    move v2, v1

    .line 5211
    :goto_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

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

    .line 5213
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 5214
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    .line 5216
    :cond_3a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3b

    move v2, v0

    goto :goto_1c

    :cond_3b
    move v2, v1

    .line 5217
    :goto_1c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

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

    .line 5219
    :cond_3d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 5220
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    return v1

    .line 5222
    :cond_3e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3f

    move v2, v0

    goto :goto_1e

    :cond_3f
    move v2, v1

    :goto_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

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

    .line 5224
    :cond_41
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 5225
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v1

    :cond_42
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

    .line 825
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConditionalOperator()Ljava/lang/String;
    .locals 1

    .line 2329
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->conditionalOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 4909
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->consistentRead:Ljava/lang/Boolean;

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

    .line 2733
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

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

    .line 4066
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 4567
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object v0
.end method

.method public getFilterExpression()Ljava/lang/String;
    .locals 1

    .line 3792
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->filterExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexName()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->indexName:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProjectionExpression()Ljava/lang/String;
    .locals 1

    .line 3625
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->projectionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 2934
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getScanFilter()Ljava/util/Map;
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

    .line 1796
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    return-object v0
.end method

.method public getSegment()Ljava/lang/Integer;
    .locals 1

    .line 3450
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->segment:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelect()Ljava/lang/String;
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->select:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSegments()Ljava/lang/Integer;
    .locals 1

    .line 3293
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->totalSegments:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 5102
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 5103
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5105
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5106
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5107
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5108
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5110
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5112
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5115
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 5116
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5118
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5119
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5121
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5123
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5126
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    .line 5127
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5130
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    .line 5131
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 5133
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v2, v1

    return v2
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 4843
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->consistentRead:Ljava/lang/Boolean;

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

    .line 881
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->attributesToGet:Ljava/util/List;

    return-void

    .line 885
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->attributesToGet:Ljava/util/List;

    return-void
.end method

.method public setConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)V
    .locals 0

    .line 2602
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Ljava/lang/String;)V
    .locals 0

    .line 2418
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0

    .line 4975
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->consistentRead:Ljava/lang/Boolean;

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

    .line 2769
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

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

    .line 4225
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 4637
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    return-void
.end method

.method public setFilterExpression(Ljava/lang/String;)V
    .locals 0

    .line 3847
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->filterExpression:Ljava/lang/String;

    return-void
.end method

.method public setIndexName(Ljava/lang/String;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->indexName:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setProjectionExpression(Ljava/lang/String;)V
    .locals 0

    .line 3678
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->projectionExpression:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 3165
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 3009
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setScanFilter(Ljava/util/Map;)V
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

    .line 1961
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    return-void
.end method

.method public setSegment(Ljava/lang/Integer;)V
    .locals 0

    .line 3508
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->segment:Ljava/lang/Integer;

    return-void
.end method

.method public setSelect(Lcom/amazonaws/services/dynamodbv2/model/Select;)V
    .locals 0

    .line 1531
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Select;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->select:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Ljava/lang/String;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->select:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTotalSegments(Ljava/lang/Integer;)V
    .locals 0

    .line 3340
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->totalSegments:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 5060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5061
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5063
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5065
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5067
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5071
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5073
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5075
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExclusiveStartKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5077
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 5078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5079
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalSegments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5081
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 5082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5083
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 5084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProjectionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5085
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 5086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilterExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5087
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 5088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5089
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 5090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5091
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 5092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string/jumbo v1, "}"

    .line 5093
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5094
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;"
        }
    .end annotation

    .line 1011
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->setAttributesToGet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 4

    .line 945
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->attributesToGet:Ljava/util/List;

    .line 948
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 949
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->attributesToGet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 2696
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 2512
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 5046
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->consistentRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withExclusiveStartKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;"
        }
    .end annotation

    .line 2810
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->exclusiveStartKey:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;"
        }
    .end annotation

    .line 4390
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeValues(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;"
        }
    .end annotation

    .line 4712
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public withFilterExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 3907
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->filterExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withIndexName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->indexName:Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withProjectionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 3736
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->projectionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 3245
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 3089
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withScanFilter(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/Condition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;"
        }
    .end annotation

    .line 2131
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->scanFilter:Ljava/util/Map;

    return-object p0
.end method

.method public withSegment(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 3571
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->segment:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSelect(Lcom/amazonaws/services/dynamodbv2/model/Select;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 1633
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Select;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->select:Ljava/lang/String;

    return-object p0
.end method

.method public withSelect(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 1433
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->select:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method public withTotalSegments(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;
    .locals 0

    .line 3392
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->totalSegments:Ljava/lang/Integer;

    return-object p0
.end method
