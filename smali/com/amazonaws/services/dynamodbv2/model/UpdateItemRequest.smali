.class public Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UpdateItemRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;"
        }
    .end annotation
.end field

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

.field private updateExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1002
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;)V"
        }
    .end annotation

    .line 1188
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 1189
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setTableName(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setKey(Ljava/util/Map;)V

    .line 1191
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setAttributeUpdates(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;",
            "Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;",
            ")V"
        }
    .end annotation

    .line 1665
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 1666
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setTableName(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setKey(Ljava/util/Map;)V

    .line 1668
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setAttributeUpdates(Ljava/util/Map;)V

    .line 1669
    invoke-virtual {p4}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setReturnValues(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1426
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 1427
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setTableName(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setKey(Ljava/util/Map;)V

    .line 1429
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setAttributeUpdates(Ljava/util/Map;)V

    .line 1430
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->setReturnValues(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAttributeUpdatesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 2

    .line 2986
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2987
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    .line 2989
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2990
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

    .line 2992
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpectedEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 2

    .line 5440
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

    .line 5443
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5444
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

    .line 5446
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeNamesEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 2

    .line 8703
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 8704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

    .line 8706
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8707
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

    .line 8709
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addExpressionAttributeValuesEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 2

    .line 8980
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 8981
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

    .line 8983
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8984
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

    .line 8986
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addKeyEntry(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 2

    .line 1839
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1843
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

    .line 1845
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearAttributeUpdatesEntries()Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 3003
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpectedEntries()Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 5457
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeNamesEntries()Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 8720
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public clearExpressionAttributeValuesEntries()Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 8997
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public clearKeyEntries()Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1856
    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

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

    .line 9084
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;

    if-nez v2, :cond_2

    return v1

    .line 9086
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;

    .line 9088
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

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

    .line 9090
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 9091
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 9093
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

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

    .line 9095
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 9097
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

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

    .line 9099
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 9100
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 9102
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

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

    .line 9104
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 9106
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

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

    .line 9108
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 9109
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 9111
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

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

    .line 9113
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 9114
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 9116
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

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

    .line 9118
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 9119
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 9121
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    .line 9122
    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

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

    .line 9124
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 9125
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    .line 9126
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    .line 9125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 9128
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

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

    .line 9130
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 9131
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 9133
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

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

    .line 9135
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 9136
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 9138
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2b

    move v2, v0

    goto :goto_14

    :cond_2b
    move v2, v1

    .line 9139
    :goto_14
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

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

    .line 9141
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 9142
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 9144
    :cond_2e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2f

    move v2, v0

    goto :goto_16

    :cond_2f
    move v2, v1

    .line 9145
    :goto_16
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

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

    .line 9147
    :cond_31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 9148
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public getAttributeUpdates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;"
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    return-object v0
.end method

.method public getConditionExpression()Ljava/lang/String;
    .locals 1

    .line 7947
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionalOperator()Ljava/lang/String;
    .locals 1

    .line 5546
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionalOperator:Ljava/lang/String;

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

    .line 3694
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

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

    .line 8287
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 8788
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

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

    .line 1753
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    return-object v0
.end method

.method public getReturnConsumedCapacity()Ljava/lang/String;
    .locals 1

    .line 6529
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnItemCollectionMetrics()Ljava/lang/String;
    .locals 1

    .line 6867
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    .line 6018
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateExpression()Ljava/lang/String;
    .locals 1

    .line 7269
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->updateExpression:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 9045
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 9046
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9048
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9049
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9051
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9053
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9056
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    .line 9057
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9060
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    .line 9061
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9063
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9065
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9068
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    .line 9069
    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 9072
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v0

    .line 9073
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v2, v1

    return v2
.end method

.method public setAttributeUpdates(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;)V"
        }
    .end annotation

    .line 2492
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    return-void
.end method

.method public setConditionExpression(Ljava/lang/String;)V
    .locals 0

    .line 8035
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionExpression:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)V
    .locals 0

    .line 5819
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionalOperator:Ljava/lang/String;

    return-void
.end method

.method public setConditionalOperator(Ljava/lang/String;)V
    .locals 0

    .line 5635
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionalOperator:Ljava/lang/String;

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

    .line 4391
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

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

    .line 8446
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

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

    .line 8858
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

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

    .line 1781
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    return-void
.end method

.method public setReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)V
    .locals 0

    .line 6760
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnConsumedCapacity(Ljava/lang/String;)V
    .locals 0

    .line 6604
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)V
    .locals 0

    .line 6949
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnItemCollectionMetrics(Ljava/lang/String;)V
    .locals 0

    .line 6892
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)V
    .locals 0

    .line 6342
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0

    .line 6124
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 1703
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setUpdateExpression(Ljava/lang/String;)V
    .locals 0

    .line 7561
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->updateExpression:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 9010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 9011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9012
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9014
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getKey()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9016
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9018
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9020
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionalOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9022
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9024
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnConsumedCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9026
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 9027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnItemCollectionMetrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9028
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 9029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getUpdateExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9030
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 9031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConditionExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9032
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 9033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9034
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 9035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpressionAttributeValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string/jumbo v1, "}"

    .line 9036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9037
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeUpdates(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;"
        }
    .end annotation

    .line 2818
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->attributeUpdates:Ljava/util/Map;

    return-object p0
.end method

.method public withConditionExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 8128
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionExpression:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 5913
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConditionalOperator;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withConditionalOperator(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 5729
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->conditionalOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;"
        }
    .end annotation

    .line 5093
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expected:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeNames(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;"
        }
    .end annotation

    .line 8611
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeNames:Ljava/util/Map;

    return-object p0
.end method

.method public withExpressionAttributeValues(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;"
        }
    .end annotation

    .line 8933
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->expressionAttributeValues:Ljava/util/Map;

    return-object p0
.end method

.method public withKey(Ljava/util/Map;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;"
        }
    .end annotation

    .line 1814
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->key:Ljava/util/Map;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 6841
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnConsumedCapacity;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnConsumedCapacity(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 6684
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnConsumedCapacity:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 6980
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnItemCollectionMetrics;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnItemCollectionMetrics(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 6922
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnItemCollectionMetrics:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 6453
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 6235
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 1725
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method public withUpdateExpression(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;
    .locals 0

    .line 7858
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateItemRequest;->updateExpression:Ljava/lang/String;

    return-object p0
.end method
