.class public interface abstract Lcom/amazonaws/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAWSRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;
.end method

.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getEndpoint()Ljava/net/URI;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpMethod()Lcom/amazonaws/http/HttpMethodName;
.end method

.method public abstract getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourcePath()Ljava/lang/String;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract getTimeOffset()I
.end method

.method public abstract isStreaming()Z
.end method

.method public abstract setAWSRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
.end method

.method public abstract setContent(Ljava/io/InputStream;)V
.end method

.method public abstract setEndpoint(Ljava/net/URI;)V
.end method

.method public abstract setHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V
.end method

.method public abstract setParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setResourcePath(Ljava/lang/String;)V
.end method

.method public abstract setStreaming(Z)V
.end method

.method public abstract setTimeOffset(I)V
.end method

.method public abstract withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/Request<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withTimeOffset(I)Lcom/amazonaws/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazonaws/Request<",
            "TT;>;"
        }
    .end annotation
.end method
