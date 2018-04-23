.class Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "RepeatableInputStreamRequestEntity.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:Ljava/io/InputStream;

.field private firstAttempt:Z

.field private inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

.field private originalException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setChunked(Z)V

    const-wide/16 v0, -0x1

    .line 84
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 86
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    .line 89
    :catch_0
    sget-object v2, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Unable to parse content length from request.  Buffering contents in memory."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 93
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UploadThroughput"

    const-string v4, "UploadByteCount"

    .line 95
    invoke-static {p1, v3, v4}, Lcom/amazonaws/metrics/internal/ServiceMetricTypeGuesser;->guessThroughputMetricType(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/metrics/ThroughputMetricType;

    move-result-object v3

    if-nez v3, :cond_1

    .line 99
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    .line 100
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v3, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    goto :goto_1

    .line 102
    :cond_1
    new-instance v4, Lcom/amazonaws/metrics/MetricInputStreamEntity;

    .line 103
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v1}, Lcom/amazonaws/metrics/MetricInputStreamEntity;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;J)V

    iput-object v4, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    .line 105
    :goto_1
    iget-object v3, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v3, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 108
    iget-object p1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContent(Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {p0, v2}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContentType(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContentLength(J)V

    return-void
.end method


# virtual methods
.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0}, Lorg/apache/http/entity/InputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    .line 151
    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 153
    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 154
    iput-object p1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    throw p1
.end method
