.class final synthetic Lcom/intermedia/service/ApiUtils$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field private final arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;


# direct methods
.method constructor <init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils$$Lambda$3;->arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/service/ApiUtils$$Lambda$3;->arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    invoke-static {v0, p1}, Lcom/intermedia/service/ApiUtils;->lambda$checkUIDAvailable$1$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method
