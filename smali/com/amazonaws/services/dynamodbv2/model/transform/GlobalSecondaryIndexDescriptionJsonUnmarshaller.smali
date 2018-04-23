.class Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GlobalSecondaryIndexDescriptionJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;
    .locals 1

    .line 86
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;

    .line 88
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;
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
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;-><init>()V

    .line 37
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 38
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

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
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setIndexName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "KeySchema"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 46
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 48
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setKeySchema(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    const-string v3, "Projection"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonUnmarshaller;

    move-result-object v2

    .line 52
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setProjection(Lcom/amazonaws/services/dynamodbv2/model/Projection;)V

    goto :goto_0

    :cond_3
    const-string v3, "IndexStatus"

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 55
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setIndexStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v3, "Backfilling"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 58
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setBackfilling(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_5
    const-string v3, "ProvisionedThroughput"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 63
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonUnmarshaller;

    move-result-object v2

    .line 64
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "IndexSizeBytes"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v2

    .line 68
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setIndexSizeBytes(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "ItemCount"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 70
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v2

    .line 71
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setItemCount(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "IndexArn"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 73
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 74
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;->setIndexArn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_9
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 79
    :cond_a
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;

    move-result-object p1

    return-object p1
.end method
