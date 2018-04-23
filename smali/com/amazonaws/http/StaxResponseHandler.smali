.class public Lcom/amazonaws/http/StaxResponseHandler;
.super Ljava/lang/Object;
.source "StaxResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.amazonaws.request"

    .line 49
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/StaxResponseHandler;->log:Lorg/apache/commons/logging/Log;

    .line 55
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/StaxResponseHandler;->XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Couldn\'t initialize XmlPullParserFactory"

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 78
    iget-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Lcom/amazonaws/transform/VoidStaxUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/transform/VoidStaxUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/amazonaws/http/StaxResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Parsing service response XML"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "<eof/>"

    sget-object v2, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 93
    :cond_0
    sget-object v1, Lcom/amazonaws/http/StaxResponseHandler;->XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v2, 0x0

    .line 94
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v0}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 97
    new-instance v2, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .line 98
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    const-string v1, "ResponseMetadata/RequestId"

    const-string v3, "AWS_REQUEST_ID"

    const/4 v4, 0x2

    .line 99
    invoke-virtual {v2, v1, v4, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "requestId"

    const-string v3, "AWS_REQUEST_ID"

    .line 101
    invoke-virtual {v2, v1, v4, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->registerMetadataExpression(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/amazonaws/http/StaxResponseHandler;->registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V

    .line 105
    iget-object v1, p0, Lcom/amazonaws/http/StaxResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v1, v2}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getMetadata()Ljava/util/Map;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "x-amzn-RequestId"

    .line 111
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "AWS_REQUEST_ID"

    const-string v3, "x-amzn-RequestId"

    .line 113
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    new-instance p1, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {p1, v1}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V

    .line 118
    sget-object p1, Lcom/amazonaws/http/StaxResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Done parsing service response"

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/StaxResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/StaxUnmarshallerContext;)V
    .locals 0

    return-void
.end method
