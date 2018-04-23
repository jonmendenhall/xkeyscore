.class final synthetic Lcom/intermedia/service/ApiUtils$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field private final arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;


# direct methods
.method private constructor <init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils$$Lambda$9;->arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/android/volley/Response$ErrorListener;
    .locals 1

    new-instance v0, Lcom/intermedia/service/ApiUtils$$Lambda$9;

    invoke-direct {v0, p0}, Lcom/intermedia/service/ApiUtils$$Lambda$9;-><init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/service/ApiUtils$$Lambda$9;->arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    invoke-interface {v0, p1}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onError(Lcom/android/volley/VolleyError;)V

    return-void
.end method
