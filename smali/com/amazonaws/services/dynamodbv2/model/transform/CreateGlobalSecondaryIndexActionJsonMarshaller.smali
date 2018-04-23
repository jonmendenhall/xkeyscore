.class Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;
.super Ljava/lang/Object;
.source "CreateGlobalSecondaryIndexActionJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;

    .line 67
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndexName"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getKeySchema()Ljava/util/List;

    move-result-object v0

    const-string v1, "KeySchema"

    .line 37
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
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

    .line 41
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getProjection()Lcom/amazonaws/services/dynamodbv2/model/Projection;

    move-result-object v0

    const-string v1, "Projection"

    .line 49
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Projection;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 52
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object p1

    const-string v0, "ProvisionedThroughput"

    .line 55
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 56
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonMarshaller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 59
    :cond_5
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
