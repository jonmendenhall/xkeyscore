.class Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;
.super Ljava/lang/Object;
.source "ConsumedCapacityJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;

    .line 71
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 37
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TableName"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->setTableName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "CapacityUnits"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->setCapacityUnits(Ljava/lang/Double;)V

    goto :goto_0

    :cond_2
    const-string v3, "Table"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->setTable(Lcom/amazonaws/services/dynamodbv2/model/Capacity;)V

    goto :goto_0

    :cond_3
    const-string v3, "LocalSecondaryIndexes"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 49
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 50
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 52
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->setLocalSecondaryIndexes(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string v3, "GlobalSecondaryIndexes"

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 55
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 57
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->setGlobalSecondaryIndexes(Ljava/util/Map;)V

    goto :goto_0

    .line 59
    :cond_5
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 62
    :cond_6
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    return-object v1
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object p1

    return-object p1
.end method
