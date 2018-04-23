.class Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;
.super Ljava/lang/Object;
.source "CapacityJsonMarshaller.java"


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    .line 41
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/CapacityJsonMarshaller;

    return-object v0
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodbv2/model/Capacity;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Capacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/Capacity;->getCapacityUnits()Ljava/lang/Double;

    move-result-object p1

    const-string v0, "CapacityUnits"

    .line 30
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 31
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    :cond_0
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    return-void
.end method
