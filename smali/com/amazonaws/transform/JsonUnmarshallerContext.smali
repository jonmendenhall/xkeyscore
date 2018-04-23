.class public Lcom/amazonaws/transform/JsonUnmarshallerContext;
.super Ljava/lang/Object;
.source "JsonUnmarshallerContext.java"


# instance fields
.field private final httpResponse:Lcom/amazonaws/http/HttpResponse;

.field private final reader:Lcom/amazonaws/util/json/AwsJsonReader;


# direct methods
.method public constructor <init>(Lcom/amazonaws/util/json/AwsJsonReader;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    .line 42
    iput-object p2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    invoke-virtual {v0}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHttpResponse()Lcom/amazonaws/http/HttpResponse;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->httpResponse:Lcom/amazonaws/http/HttpResponse;

    return-object v0
.end method

.method public getReader()Lcom/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext;->reader:Lcom/amazonaws/util/json/AwsJsonReader;

    return-object v0
.end method
