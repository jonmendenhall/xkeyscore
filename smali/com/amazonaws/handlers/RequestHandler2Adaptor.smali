.class final Lcom/amazonaws/handlers/RequestHandler2Adaptor;
.super Lcom/amazonaws/handlers/RequestHandler2;
.source "RequestHandler2Adaptor.java"


# instance fields
.field private final old:Lcom/amazonaws/handlers/RequestHandler;


# direct methods
.method constructor <init>(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazonaws/handlers/RequestHandler2;-><init>()V

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    return-void
.end method


# virtual methods
.method public afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 60
    iget-object p2, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    invoke-interface {p2, p1, p3}, Lcom/amazonaws/handlers/RequestHandler;->afterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V

    return-void
.end method

.method public afterResponse(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getAWSRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/Response;->getAwsResponse()Ljava/lang/Object;

    move-result-object p2

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    .line 53
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    invoke-interface {v1, p1, p2, v0}, Lcom/amazonaws/handlers/RequestHandler;->afterResponse(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V

    return-void
.end method

.method public beforeRequest(Lcom/amazonaws/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/handlers/RequestHandler;->beforeRequest(Lcom/amazonaws/Request;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 70
    instance-of v0, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    check-cast p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    .line 73
    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    iget-object p1, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->old:Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
