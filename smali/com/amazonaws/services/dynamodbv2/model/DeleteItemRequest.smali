.class public Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conditionExpression:Ljava/lang/String;

.field private conditionalOperator:Ljava/lang/String;

.field private expected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
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

.field private returnConsumedCapacity:Ljava/lang/String;

.field private returnItemCollectionMetrics:Ljava/lang/String;

.field private returnValues:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 694
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

    .line 717
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 718
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setTableName(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setKey(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;",
            ")V"
        }
    .end annotation

    .line 826
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 827
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setTableName(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setKey(Ljava/util/Map;)V

    .line 829
    invoke-virtual {p3}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setReturnValues(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 771
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 772
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setTableName(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setKey(Ljava/util/Map;)V

    .line 774
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->setReturnValues(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExpectedEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 2

    .line 3453
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3457
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

    .line 3459
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 2

    .line 5633
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

    .line 5636
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5637
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

    .line 5639
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeValuesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 2

    .line 5910
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

    .line 5913
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5914
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

    .line 5916
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
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

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExpectedEntries()Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 3470
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 5650
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeValuesEntries()Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 5927
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public clearKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1016
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

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

    .line 6006
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;

    if-nez v2, :cond_2

    return v1

    .line 6008
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;

    .line 6010
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

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

    .line 6012
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6013
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 6015
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

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

    .line 6017
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 6019
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

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

    .line 6021
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 6023
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

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

    .line 6025
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 6026
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 6028
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

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

    .line 6030
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 6031
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 6033
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 6035
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 6036
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 6038
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    .line 6039
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

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

    .line 6041
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 6042
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    .line 6043
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    .line 6042
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 6045
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

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

    .line 6047
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 6048
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 6050
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    .line 6051
    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

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

    .line 6053
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 6054
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 6056
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    .line 6057
    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

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

    .line 6059
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 6060
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0
.end method

.method public getConditionExpression()Ljava/lang/String;
    .locals 1

    .line 4877
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionalOperator()Ljava/lang/String;
    .locals 1

    .line 3559
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getExpected()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
            ">;"
        }
    .end annotation

    .line 1707
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

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

    .line 5217
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 5718
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

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

    .line 913
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 4337
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnItemCollectionMetrics()Ljava/lang/String;
    .locals 1

    .line 4675
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    .line 3990
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 5971
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 5972
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5973
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5975
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5977
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5980
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 5981
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5984
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    .line 5985
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5987
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5990
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    .line 5991
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 5994
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    .line 5995
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v2, v1

    return v2
.end method

.method public setConditionExpression(Ljava/lang/String;)V
    .locals 0

    .line 4965
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionExpression:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)V
    .locals 0

    .line 3832
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Ljava/lang/String;)V
    .locals 0

    .line 3648
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setExpected(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
            ">;)V"
        }
    .end annotation

    .line 2404
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

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

    .line 5376
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 5788
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

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

    .line 941
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 4568
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 4412
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)V
    .locals 0

    .line 4757
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Ljava/lang/String;)V
    .locals 0

    .line 4700
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)V
    .locals 0

    .line 4191
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0

    .line 4055
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 5941
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5942
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5946
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5948
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5950
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5952
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5954
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnItemCollectionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5956
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 5957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5958
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 5959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5960
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string/jumbo v1, "}"

    .line 5962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConditionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 5058
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 3926
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 3742
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;"
        }
    .end annotation

    .line 3106
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expected:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;"
        }
    .end annotation

    .line 5541
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeValues(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;"
        }
    .end annotation

    .line 5863
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public withKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;"
        }
    .end annotation

    .line 974
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->key:Ljava/util/Map;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 4649
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 4492
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 4788
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 4730
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 4261
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 4125
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
