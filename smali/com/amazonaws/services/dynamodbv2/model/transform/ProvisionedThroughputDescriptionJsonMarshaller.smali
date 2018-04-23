.class Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;
.super Ljava/lang/Object;
.source "ProvisionedThroughputDescriptionJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;

    .line 65
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputDescriptionJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "LastIncreaseDateTime"

    .line 32
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "LastDecreaseDateTime"

    .line 38
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 39
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "NumberOfDecreasesToday"

    .line 44
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 45
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ReadCapacityUnits"

    .line 49
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 50
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "WriteCapacityUnits"

    .line 54
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 57
    :cond_4
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
