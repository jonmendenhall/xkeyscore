.class Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;
.super Ljava/lang/Object;
.source "TableDescriptionJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;
    .locals 1

    .line 139
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;

    .line 141
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/TableDescriptionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/TableDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    const-string v1, "AttributeDefinitions"

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

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeDefinitionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeDefinitionJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/AttributeDefinitionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TableName"

    .line 44
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 45
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 48
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v0

    const-string v1, "KeySchema"

    .line 49
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;

    if-eqz v1, :cond_4

    .line 53
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/KeySchemaElementJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_1

    .line 57
    :cond_5
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TableStatus"

    .line 61
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 62
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "CreationDateTime"

    .line 66
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v0

    const-string v1, "ProvisionedThroughput"

    .line 72
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 76
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 77
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "TableSizeBytes"

    .line 78
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 81
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 82
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ItemCount"

    .line 83
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TableArn"

    .line 88
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 93
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    const-string v1, "LocalSecondaryIndexes"

    .line 94
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;

    if-eqz v1, :cond_d

    .line 98
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/LocalSecondaryIndexDescriptionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_2

    .line 102
    :cond_e
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    const-string v1, "GlobalSecondaryIndexes"

    .line 107
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 108
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;

    if-eqz v1, :cond_10

    .line 111
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonMarshaller;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexDescriptionJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_3

    .line 115
    :cond_11
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 117
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 118
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v0

    const-string v1, "StreamSpecification"

    .line 119
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 120
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/amazonaws/services/dynamodbv2/model/transform/StreamSpecificationJsonMarshaller;->marshall(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 123
    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 124
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LatestStreamLabel"

    .line 125
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 126
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 128
    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 129
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LatestStreamArn"

    .line 130
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 131
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 133
    :cond_15
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
