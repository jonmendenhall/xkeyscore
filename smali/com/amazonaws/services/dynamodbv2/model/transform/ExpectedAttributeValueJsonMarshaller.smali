.class Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;
.super Ljava/lang/Object;
.source "ExpectedAttributeValueJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;

    .line 65
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getExists()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Exists"

    .line 36
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComparisonOperator"

    .line 41
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 46
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->getAttributeValueList()Ljava/util/List;

    move-result-object p1

    const-string v0, "AttributeValueList"

    .line 47
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 48
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v0, :cond_3

    .line 51
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 55
    :cond_4
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    :cond_5
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
