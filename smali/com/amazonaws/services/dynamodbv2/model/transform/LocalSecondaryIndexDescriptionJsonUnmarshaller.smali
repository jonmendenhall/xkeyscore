.class Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;
.super Ljava/lang/Object;
.source "LocalSecondaryIndexDescriptionJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;
    .locals 1

    .line 72
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;

    .line 74
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;-><init>()V

    .line 37
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 38
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 39
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IndexName"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setIndexName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "KeySchema"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 45
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setKeySchema(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    const-string v3, "Projection"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonUnmarshaller;

    move-result-object v2

    .line 51
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)V

    goto :goto_0

    :cond_3
    const-string v3, "IndexSizeBytes"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v2

    .line 54
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setIndexSizeBytes(Ljava/lang/Long;)V

    goto :goto_0

    :cond_4
    const-string v3, "ItemCount"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v2

    .line 57
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setItemCount(Ljava/lang/Long;)V

    goto :goto_0

    :cond_5
    const-string v3, "IndexArn"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 59
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 60
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;->setIndexArn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_6
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 65
    :cond_7
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;

    move-result-object p1

    return-object p1
.end method
