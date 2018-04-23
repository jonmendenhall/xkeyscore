.class public Lcom/amazonaws/services/dynamodbv2/model/transform/ScanRequestMarshaller;
.super Ljava/lang/Object;
.source "ScanRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(ScanRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonDynamoDB"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "DynamoDB_20120810.Scan"

    const-string v2, "X-Amz-Target"

    .line 50
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 54
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 57
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 58
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TableName"

    .line 62
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IndexName"

    .line 67
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 71
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    const-string v4, "AttributesToGet"

    .line 72
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 76
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 79
    :cond_4
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 82
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Limit"

    .line 83
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Select"

    .line 88
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 92
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ScanFilter"

    .line 93
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 94
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/Condition;

    if-eqz v5, :cond_8

    .line 98
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 99
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Condition;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 102
    :cond_9
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 105
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConditionalOperator"

    .line 106
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 107
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 109
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 111
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ExclusiveStartKey"

    .line 112
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 113
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 115
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 114
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v5, :cond_c

    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 119
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_2

    .line 123
    :cond_d
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 125
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 126
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReturnConsumedCapacity"

    .line 127
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 128
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 130
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 131
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getTotalSegments()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TotalSegments"

    .line 132
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 133
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 135
    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 136
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getSegment()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Segment"

    .line 137
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 138
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 140
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 141
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProjectionExpression"

    .line 142
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 143
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 145
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 146
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FilterExpression"

    .line 147
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 148
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 150
    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 152
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ExpressionAttributeNames"

    .line 153
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 154
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 156
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 155
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 160
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_3

    .line 163
    :cond_15
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 165
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 167
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ExpressionAttributeValues"

    .line 168
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 169
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 171
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 170
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v5, :cond_17

    .line 175
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 176
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_4

    .line 180
    :cond_18
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 182
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 183
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "ConsistentRead"

    .line 184
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 188
    :cond_1a
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 189
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 190
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 192
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 193
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    invoke-interface {v0}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.0"

    .line 199
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-object v0

    :catch_0
    move-exception p1

    .line 195
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ScanRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ScanRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
