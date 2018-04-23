.class Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;
.super Ljava/lang/Object;
.source "ConsumedCapacityJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;

    .line 84
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TableName"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v0

    const-string v1, "CapacityUnits"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getTable()Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    move-result-object v0

    const-string v1, "Table"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Capacity;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getLocalSecondaryIndexes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "LocalSecondaryIndexes"

    .line 47
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    if-eqz v2, :cond_3

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Capacity;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 58
    :cond_4
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 60
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;->getGlobalSecondaryIndexes()Ljava/util/Map;

    move-result-object p1

    const-string v0, "GlobalSecondaryIndexes"

    .line 63
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/Capacity;

    if-eqz v1, :cond_6

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Capacity;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 74
    :cond_7
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    :cond_8
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
