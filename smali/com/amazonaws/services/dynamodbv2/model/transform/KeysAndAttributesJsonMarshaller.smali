.class Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;
.super Ljava/lang/Object;
.source "KeysAndAttributesJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;

    .line 95
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/KeysAndAttributesJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v0

    const-string v1, "Keys"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v3, :cond_1

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v3, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 46
    :cond_2
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 49
    :cond_3
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 52
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    const-string v1, "AttributesToGet"

    .line 53
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 57
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_2

    .line 60
    :cond_6
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 63
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ConsistentRead"

    .line 64
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getProjectionExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProjectionExpression"

    .line 69
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 72
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 74
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/KeysAndAttributes;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object p1

    const-string v0, "ExpressionAttributeNames"

    .line 75
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_3

    .line 85
    :cond_b
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 87
    :cond_c
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
