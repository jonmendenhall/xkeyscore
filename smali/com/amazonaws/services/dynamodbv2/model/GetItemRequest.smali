.class public Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetItemRequest.java"

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

.field private consistentRead:Ljava/lang/Boolean;

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

.field private key:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private projectionExpression:Ljava/lang/String;

.field private returnConsumedCapacity:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setTableName(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setKey(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 300
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setTableName(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setKey(Ljava/util/Map;)V

    .line 302
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setConsistentRead(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 2

    .line 1931
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1932
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1935
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

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
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

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1948
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public clearKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

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

    .line 2012
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;

    if-nez v2, :cond_2

    return v1

    .line 2014
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;

    .line 2016
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

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

    .line 2018
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2019
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 2021
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

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

    .line 2023
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 2025
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

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

    .line 2027
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2028
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 2030
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

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

    .line 2032
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2033
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 2035
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 2037
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2038
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 2040
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

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

    .line 2042
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2043
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 2045
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    .line 2046
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

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

    .line 2048
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 2049
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
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

    .line 545
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

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

    .line 1515
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Ljava/util/Map;
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

    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    return-object v0
.end method

.method public getProjectionExpression()Ljava/lang/String;
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->projectionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1986
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 1987
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1989
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1991
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1994
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 1995
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 1997
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 2000
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v0

    .line 2001
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v2, v1

    return v2
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

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

    .line 601
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    return-void
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

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

    .line 1674
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-void
.end method

.method public setKey(Ljava/util/Map;)V
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

    .line 414
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    return-void
.end method

.method public setProjectionExpression(Ljava/lang/String;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->projectionExpression:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 1114
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 1962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProjectionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v1, "}"

    .line 1977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;"
        }
    .end annotation

    .line 731
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->setAttributesToGet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 4

    .line 665
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    .line 668
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 669
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->attributesToGet:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->consistentRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;"
        }
    .end annotation

    .line 1839
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->key:Ljava/util/Map;

    return-object p0
.end method

.method public withProjectionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->projectionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0

    .line 1194
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/GetItemRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
