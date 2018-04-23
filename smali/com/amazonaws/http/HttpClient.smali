.class public interface abstract Lcom/amazonaws/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# virtual methods
.method public abstract execute(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
