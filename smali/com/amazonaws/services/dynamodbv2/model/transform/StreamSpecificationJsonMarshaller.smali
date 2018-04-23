.class Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;
.super Ljava/lang/Object;
.source "StreamSpecificationJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;

    .line 47
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "StreamEnabled"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StreamViewType"

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
