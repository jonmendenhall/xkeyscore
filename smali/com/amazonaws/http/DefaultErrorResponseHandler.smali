.class public Lcom/amazonaws/http/DefaultErrorResponseHandler;
.super Ljava/lang/Object;
.source "DefaultErrorResponseHandler.java"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private unmarshallerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/DefaultErrorResponseHandler;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/http/DefaultErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    return-void
.end method

.method private newAmazonServiceException(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;Ljava/lang/Exception;)Lcom/amazonaws/AmazonServiceException;
    .locals 2

    .line 111
    new-instance v0, Lcom/amazonaws/AmazonServiceException;

    invoke-direct {v0, p1, p3}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 112
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p1

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 114
    sget-object p2, Lcom/amazonaws/AmazonServiceException$ErrorType;->Unknown:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v0, p2}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 115
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    return-object v0
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    iget-object v0, p0, Lcom/amazonaws/http/DefaultErrorResponseHandler;->unmarshallerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/transform/Unmarshaller;

    .line 95
    invoke-interface {v2, v1}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/AmazonServiceException;

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    return-object v2

    .line 102
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to unmarshall error response from service"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v1

    const-string v2, "Unable to unmarshall error response (%s)"

    const/4 v3, 0x1

    .line 82
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/http/DefaultErrorResponseHandler;->newAmazonServiceException(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;Ljava/lang/Exception;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v0

    .line 72
    sget-object v1, Lcom/amazonaws/http/DefaultErrorResponseHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    sget-object v1, Lcom/amazonaws/http/DefaultErrorResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Failed in reading the error response"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    const-string v1, "Unable to unmarshall error response"

    .line 74
    invoke-direct {p0, v1, p1, v0}, Lcom/amazonaws/http/DefaultErrorResponseHandler;->newAmazonServiceException(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;Ljava/lang/Exception;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/DefaultErrorResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
