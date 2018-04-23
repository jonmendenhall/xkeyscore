.class public Lcom/amazonaws/http/HttpMethodReleaseInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "HttpMethodReleaseInputStream.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private alreadyReleased:Z

.field private httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

.field private in:Ljava/io/InputStream;

.field private underlyingStreamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 71
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to obtain HttpMethod\'s response data stream"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :catch_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 188
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 191
    :cond_0
    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 205
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Released HttpMethod as its response data stream is closed"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_1

    .line 226
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Attempting to release HttpMethod in finalize() as its response data stream has gone out of scope. This attempt will not always succeed and cannot be relied upon! Please ensure S3 response data streams are always fully consumed or closed to avoid HTTP connection starvation."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 232
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Successfully released HttpMethod in finalize(). You were lucky this time... Please ensure S3 response data streams are always fully consumed or closed."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 237
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getHttpRequest()Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    return-object v0
.end method

.method protected getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 129
    iget-boolean v1, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 131
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 139
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    sget-object v1, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 142
    :cond_1
    throw v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    .line 157
    iput-boolean p2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 158
    iget-boolean p2, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez p2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 160
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 161
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p1

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 168
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 169
    sget-object p2, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    :cond_1
    throw p1
.end method

.method protected releaseConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_1

    .line 104
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->httpRequest:Lorg/apache/http/HttpEntityEnclosingRequest;

    check-cast v0, Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 109
    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/amazonaws/http/HttpMethodReleaseInputStream;->alreadyReleased:Z

    :cond_1
    return-void
.end method
