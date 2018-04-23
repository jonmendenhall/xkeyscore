.class Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;
.super Ljava/lang/Object;
.source "ProjectionJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;

    .line 52
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProjectionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/Projection;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->getProjectionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->getProjectionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProjectionType"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->getNonKeyAttributes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Projection;->getNonKeyAttributes()Ljava/util/List;

    move-result-object p1

    const-string v0, "NonKeyAttributes"

    .line 35
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_3
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
