.class public Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemRequestMarshaller;
.super Ljava/lang/Object;
.source "PutItemRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
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
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(PutItemRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonDynamoDB"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "DynamoDB_20120810.PutItem"

    const-string v2, "X-Amz-Target"

    .line 51
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 55
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 58
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 59
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 61
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TableName"

    .line 63
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Item"

    .line 68
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 70
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v5, :cond_2

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 81
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Expected"

    .line 82
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 83
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 85
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 84
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;

    if-eqz v5, :cond_5

    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ExpectedAttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ExpectedAttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 93
    :cond_6
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReturnValues"

    .line 97
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 100
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnConsumedCapacity()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReturnConsumedCapacity"

    .line 102
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 103
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 105
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 107
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getReturnItemCollectionMetrics()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReturnItemCollectionMetrics"

    .line 108
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 109
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 111
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 112
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionalOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConditionalOperator"

    .line 113
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 114
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 116
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getConditionExpression()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConditionExpression"

    .line 118
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 119
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 121
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 123
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeNames()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ExpressionAttributeNames"

    .line 124
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 125
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 127
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 126
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 130
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 131
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_2

    .line 134
    :cond_e
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 136
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 138
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;->getExpressionAttributeValues()Ljava/util/Map;

    move-result-object p1

    const-string v3, "ExpressionAttributeValues"

    .line 139
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 140
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;

    if-eqz v4, :cond_10

    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 147
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeValueJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeValue;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_3

    .line 151
    :cond_11
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 154
    :cond_12
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 155
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 156
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 158
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 159
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-interface {v0}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.0"

    .line 165
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-object v0

    :catch_0
    move-exception p1

    .line 161
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
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
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/PutItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/PutItemRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
