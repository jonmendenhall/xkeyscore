.class Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;
.super Ljava/lang/Object;
.source "WriteRequestJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;

    .line 57
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    new-instance v1, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;-><init>()V

    .line 35
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 36
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PutRequest"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/PutRequestJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/PutRequestJsonUnmarshaller;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/PutRequestJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/PutRequest;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->setPutRequest(Lcom/amazonaws/services/dynamodbv2/model/PutRequest;)V

    goto :goto_0

    :cond_1
    const-string v3, "DeleteRequest"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteRequestJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteRequestJsonUnmarshaller;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/DeleteRequestJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;->setDeleteRequest(Lcom/amazonaws/services/dynamodbv2/model/DeleteRequest;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 48
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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/transform/WriteRequestJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodbv2/model/WriteRequest;

    move-result-object p1

    return-object p1
.end method
