.class public Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "QueryResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/QueryResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;

    .line 71
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Items"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    new-instance v3, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 39
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 42
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->setItems(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const-string v3, "Count"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->setCount(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v3, "ScannedCount"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    move-result-object v2

    .line 48
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->setScannedCount(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v3, "LastEvaluatedKey"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 51
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 53
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->setLastEvaluatedKey(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string v3, "ConsumedCapacity"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;

    move-result-object v2

    .line 56
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/QueryResult;->setConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)V

    goto :goto_0

    .line 58
    :cond_4
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 61
    :cond_5
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/QueryResult;

    move-result-object p1

    return-object p1
.end method
