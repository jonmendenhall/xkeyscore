.class public Lcom/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

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
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    .line 53
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    .line 68
    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    .line 76
    iget-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/amazonaws/transform/VoidJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 9
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

    .line 86
    sget-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Parsing service response JSON"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-crc32"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "{}"

    sget-object v3, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    :cond_0
    sget-object v2, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRC32Checksum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 100
    sget-object v2, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content encoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Encoding"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 103
    new-instance v2, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    invoke-direct {v2, v1}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v1, "gzip"

    .line 104
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Content-Encoding"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 111
    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v3}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 115
    :try_start_0
    new-instance v3, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v3}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 116
    new-instance v4, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {v4, v1, p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V

    .line 119
    iget-object v5, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v5, v4}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 122
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 123
    invoke-virtual {v2}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->getCRC32Checksum()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    .line 125
    new-instance p1, Lcom/amazonaws/internal/CRC32MismatchException;

    const-string v0, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct {p1, v0}, Lcom/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_3
    invoke-virtual {v3, v4}, Lcom/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AWS_REQUEST_ID"

    .line 134
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v4, "x-amzn-RequestId"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance p1, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {p1, v0}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, p1}, Lcom/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V

    .line 137
    sget-object p1, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "Done parsing service response"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-boolean p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez p1, :cond_4

    .line 142
    :try_start_1
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 144
    sget-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Error closing json parser"

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-object v3

    :catchall_0
    move-exception p1

    .line 140
    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v0, :cond_5

    .line 142
    :try_start_2
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 144
    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Error closing json parser"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 145
    :cond_5
    :goto_2
    throw p1
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
