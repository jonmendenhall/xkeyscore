.class Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;
.super Ljava/lang/Object;
.source "ExpectedAttributeValueJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;

    .line 66
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 37
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Value"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setValue(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;)V

    goto :goto_0

    :cond_1
    const-string v3, "Exists"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setExists(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string v3, "ComparisonOperator"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setComparisonOperator(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "AttributeValueList"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 50
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 52
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;->setAttributeValueList(Ljava/util/Collection;)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 57
    :cond_5
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;

    move-result-object p1

    return-object p1
.end method
