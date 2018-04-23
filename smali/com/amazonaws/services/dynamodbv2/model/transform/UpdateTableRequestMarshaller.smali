.class public Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableRequestMarshaller;
.super Ljava/lang/Object;
.source "UpdateTableRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
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
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(UpdateTableRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonDynamoDB"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "DynamoDB_20120810.UpdateTable"

    const-string v2, "X-Amz-Target"

    .line 52
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 56
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 59
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 60
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v3

    const-string v4, "AttributeDefinitions"

    .line 65
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;

    if-eqz v4, :cond_1

    .line 69
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeDefinitionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeDefinitionJsonMarshaller;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeDefinitionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 76
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TableName"

    .line 77
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 78
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 80
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 82
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    const-string v4, "ProvisionedThroughput"

    .line 83
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 87
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 89
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v3

    const-string v4, "GlobalSecondaryIndexUpdates"

    .line 90
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;

    if-eqz v4, :cond_6

    .line 94
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonMarshaller;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 98
    :cond_7
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 100
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 102
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object p1

    const-string v3, "StreamSpecification"

    .line 103
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 108
    :cond_9
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 109
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 110
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    sget-object v1, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 112
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 113
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-interface {v0}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "Content-Type"

    const-string v1, "application/x-amz-json-1.0"

    .line 119
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0

    :catch_0
    move-exception p1

    .line 115
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to marshall request to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
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
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
