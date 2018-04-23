.class public Lcom/amazonaws/services/dynamodbv2/model/transform/QueryRequestMarshaller;
.super Ljava/lang/Object;
.source "QueryRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
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
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(QueryRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonDynamoDB"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "DynamoDB_20120810.Query"

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
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TableName"

    .line 62
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 63
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getIndexName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IndexName"

    .line 67
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 68
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getSelect()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Select"

    .line 72
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 76
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    const-string v4, "AttributesToGet"

    .line 77
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 81
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 84
    :cond_5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Limit"

    .line 88
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 92
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ConsistentRead"

    .line 93
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 94
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 96
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditions()Ljava/util/Map;

    move-result-object v3

    const-string v4, "KeyConditions"

    .line 98
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 99
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 101
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 100
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/Condition;

    if-eqz v5, :cond_9

    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 105
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Condition;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 109
    :cond_a
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 111
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 112
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getQueryFilter()Ljava/util/Map;

    move-result-object v3

    const-string v4, "QueryFilter"

    .line 113
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 114
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 116
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 115
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

    .line 117
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/Condition;

    if-eqz v5, :cond_c

    .line 119
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 120
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ConditionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/Condition;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_2

    .line 124
    :cond_d
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 126
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 127
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConditionalOperator"

    .line 128
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 129
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 131
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 132
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "ScanIndexForward"

    .line 133
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 134
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 136
    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 138
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExclusiveStartKey()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ExclusiveStartKey"

    .line 139
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 140
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 142
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 141
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v5, :cond_11

    .line 145
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 146
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_3

    .line 150
    :cond_12
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 152
    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 153
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReturnConsumedCapacity"

    .line 154
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 155
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 157
    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 158
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getProjectionExpression()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ProjectionExpression"

    .line 159
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 160
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 162
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 163
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getFilterExpression()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FilterExpression"

    .line 164
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 165
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 167
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 168
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getKeyConditionExpression()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyConditionExpression"

    .line 169
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 170
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 172
    :cond_17
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ExpressionAttributeNames"

    .line 175
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 176
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 178
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 177
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 181
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 182
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_4

    .line 185
    :cond_19
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 187
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 189
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object p1

    const-string v3, "ExpressionAttributeValues"

    .line 190
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 191
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 193
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v4, :cond_1b

    .line 197
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 198
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_5

    .line 202
    :cond_1c
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 205
    :cond_1d
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 206
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 207
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 209
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 210
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    invoke-interface {v0}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.0"

    .line 216
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-object v0

    :catch_0
    move-exception p1

    .line 212
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
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
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/QueryRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/QueryRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
