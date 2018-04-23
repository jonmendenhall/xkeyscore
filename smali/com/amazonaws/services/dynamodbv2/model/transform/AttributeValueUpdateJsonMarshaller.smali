.class Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;
.super Ljava/lang/Object;
.source "AttributeValueUpdateJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;

    .line 47
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueUpdateJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    const-string v1, "Value"

    .line 31
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 32
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Action"

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
