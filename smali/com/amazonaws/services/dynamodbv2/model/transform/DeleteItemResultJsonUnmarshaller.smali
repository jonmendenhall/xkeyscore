.class public Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "DeleteItemResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;

    .line 62
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attributes"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 38
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 40
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;->setAttributes(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v3, "ConsumedCapacity"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConsumedCapacityJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;->setConsumedCapacity(Lcom/amazonaws/services/dynamodbv2/model/ConsumedCapacity;)V

    goto :goto_0

    :cond_1
    const-string v3, "ItemCollectionMetrics"

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ItemCollectionMetricsJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ItemCollectionMetricsJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ItemCollectionMetricsJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;->setItemCollectionMetrics(Lcom/amazonaws/services/dynamodbv2/model/ItemCollectionMetrics;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 52
    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteItemResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/DeleteItemResult;

    move-result-object p1

    return-object p1
.end method
