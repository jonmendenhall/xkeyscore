.class public Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;
.super Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
.source "ResponseHeaderHandlerChain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final headerHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;[",
            "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 43
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->headerHandlers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 4
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

    .line 54
    invoke-super {p0, p1}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->headerHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/internal/HeaderHandler;

    .line 59
    invoke-interface {v3, v1, p1}, Lcom/amazonaws/services/s3/internal/HeaderHandler;->handle(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method
