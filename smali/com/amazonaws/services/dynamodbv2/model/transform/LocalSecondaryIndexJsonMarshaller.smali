.class Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;
.super Ljava/lang/Object;
.source "LocalSecondaryIndexJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;

    .line 59
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndexName"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;->getKeySchema()Ljava/util/List;

    move-result-object v0

    const-string v1, "KeySchema"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;

    if-eqz v1, :cond_1

    .line 40
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object p1

    const-string v0, "Projection"

    .line 48
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Projection;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 51
    :cond_4
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
