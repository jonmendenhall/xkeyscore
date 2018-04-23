.class Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;
.super Ljava/lang/Object;
.source "UpdateGlobalSecondaryIndexActionJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;

    .line 61
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;-><init>()V

    .line 37
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 38
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IndexName"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->setIndexName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "ProvisionedThroughput"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonUnmarshaller;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/ProvisionedThroughputJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 52
    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object p1

    return-object p1
.end method
