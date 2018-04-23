.class Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;
.super Ljava/lang/Object;
.source "GlobalSecondaryIndexUpdateJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;

    .line 64
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;-><init>()V

    .line 36
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 37
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Update"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/UpdateGlobalSecondaryIndexActionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->setUpdate(Lcom/amazonaws/services/dynamodbv2/model/UpdateGlobalSecondaryIndexAction;)V

    goto :goto_0

    :cond_1
    const-string v3, "Create"

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonUnmarshaller;

    move-result-object v2

    .line 46
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/CreateGlobalSecondaryIndexActionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->setCreate(Lcom/amazonaws/services/dynamodbv2/model/CreateGlobalSecondaryIndexAction;)V

    goto :goto_0

    :cond_2
    const-string v3, "Delete"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteGlobalSecondaryIndexActionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteGlobalSecondaryIndexActionJsonUnmarshaller;

    move-result-object v2

    .line 50
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteGlobalSecondaryIndexActionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;->setDelete(Lcom/amazonaws/services/dynamodbv2/model/DeleteGlobalSecondaryIndexAction;)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 55
    :cond_4
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/GlobalSecondaryIndexUpdateJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;

    move-result-object p1

    return-object p1
.end method
