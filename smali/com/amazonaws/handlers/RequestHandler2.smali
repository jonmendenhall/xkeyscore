.class public abstract Lcom/amazonaws/handlers/RequestHandler2;
.super Ljava/lang/Object;
.source "RequestHandler2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapt(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;
    .locals 1

    .line 74
    new-instance v0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    invoke-direct {v0, p0}, Lcom/amazonaws/handlers/RequestHandler2Adaptor;-><init>(Lcom/amazonaws/handlers/RequestHandler;)V

    return-object v0
.end method


# virtual methods
.method public abstract afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V
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
.end method

.method public abstract afterResponse(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract beforeRequest(Lcom/amazonaws/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation
.end method
