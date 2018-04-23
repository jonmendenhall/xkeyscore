.class public Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutItemRequest.java"

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

.field private item:Ljava/util/Map;
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

    .line 729
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

    .line 769
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 770
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setTableName(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setItem(Ljava/util/Map;)V

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

    .line 916
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 917
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setTableName(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setItem(Ljava/util/Map;)V

    .line 919
    invoke-virtual {p3}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setReturnValues(Ljava/lang/String;)V

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

    .line 842
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 843
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setTableName(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setItem(Ljava/util/Map;)V

    .line 845
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->setReturnValues(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addExpectedEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 2

    .line 3649
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

    .line 3652
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3653
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

    .line 3655
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 2

    .line 5842
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

    .line 5845
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5846
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

    .line 5848
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeValuesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 2

    .line 6119
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 6120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    .line 6122
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6123
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

    .line 6125
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addItemEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
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

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExpectedEntries()Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 3666
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 5859
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeValuesEntries()Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 6136
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public clearItemEntries()Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1212
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

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

    .line 6215
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;

    if-nez v2, :cond_2

    return v1

    .line 6217
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;

    .line 6219
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

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

    .line 6221
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6222
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 6224
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

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

    .line 6226
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 6228
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

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

    .line 6230
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 6232
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

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

    .line 6234
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 6235
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 6237
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 6239
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 6240
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 6242
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    .line 6243
    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

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

    .line 6245
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 6246
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    .line 6247
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    .line 6246
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 6249
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

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

    .line 6251
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 6252
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 6254
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

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

    .line 6256
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 6257
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 6259
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    .line 6260
    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

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

    .line 6262
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 6263
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 6265
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    .line 6266
    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

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

    .line 6268
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 6269
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

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

    .line 5086
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionalOperator()Ljava/lang/String;
    .locals 1

    .line 4630
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionalOperator:Ljava/lang/String;

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

    .line 1903
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

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

    .line 5426
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 5927
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object v0
.end method

.method public getItem()Ljava/util/Map;
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

    .line 1033
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 4091
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnItemCollectionMetrics()Ljava/lang/String;
    .locals 1

    .line 4428
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    .line 3732
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 6180
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 6181
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6182
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6184
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6187
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 6188
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6191
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    .line 6192
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6194
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6196
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6199
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    .line 6200
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 6203
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    .line 6204
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v2, v1

    return v2
.end method

.method public setConditionExpression(Ljava/lang/String;)V
    .locals 0

    .line 5174
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionExpression:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)V
    .locals 0

    .line 4903
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Ljava/lang/String;)V
    .locals 0

    .line 4719
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionalOperator:Ljava/lang/String;

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

    .line 2600
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

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

    .line 5585
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 5997
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-void
.end method

.method public setItem(Ljava/util/Map;)V
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

    .line 1092
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 4322
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 4166
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)V
    .locals 0

    .line 4510
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Ljava/lang/String;)V
    .locals 0

    .line 4453
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)V
    .locals 0

    .line 3942
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0

    .line 3800
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 6149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 6150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6151
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6153
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6155
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6157
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6159
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6161
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnItemCollectionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6163
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6165
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6167
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 6168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6169
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 6170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string/jumbo v1, "}"

    .line 6171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConditionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 5267
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4997
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4813
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;"
        }
    .end annotation

    .line 3302
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expected:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;"
        }
    .end annotation

    .line 5750
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeValues(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;"
        }
    .end annotation

    .line 6072
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public withItem(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;"
        }
    .end annotation

    .line 1156
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->item:Ljava/util/Map;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4402
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4246
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4541
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4483
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 4015
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 3873
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
