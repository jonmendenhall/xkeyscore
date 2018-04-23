.class Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;
.super Ljava/lang/Object;
.source "AttributeValueJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    .line 118
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    .line 30
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    .line 35
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 36
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "B"

    .line 40
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v0

    const-string v1, "SS"

    .line 45
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 46
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 49
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 52
    :cond_4
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 54
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v0

    const-string v1, "NS"

    .line 56
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 60
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_1

    .line 63
    :cond_7
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v0

    const-string v1, "BS"

    .line 67
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_9

    .line 71
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_2

    .line 74
    :cond_a
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getM()Ljava/util/Map;

    move-result-object v0

    const-string v1, "M"

    .line 78
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v2, :cond_c

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v2, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_3

    .line 87
    :cond_d
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getL()Ljava/util/List;

    move-result-object v0

    const-string v1, "L"

    .line 91
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v1, :cond_f

    .line 95
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_4

    .line 98
    :cond_10
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 100
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getNULL()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "NULL"

    .line 102
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 105
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;->getBOOL()Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "BOOL"

    .line 107
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 110
    :cond_13
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
