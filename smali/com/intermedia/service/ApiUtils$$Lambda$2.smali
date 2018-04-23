.class final synthetic Lcom/intermedia/service/ApiUtils$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field private final arg$1:Lcom/intermedia/service/ApiUtils;

.field private final arg$2:Lcom/intermedia/service/ApiUtils$APIResponseListener;


# direct methods
.method constructor <init>(Lcom/intermedia/service/ApiUtils;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils$$Lambda$2;->arg$1:Lcom/intermedia/service/ApiUtils;

    iput-object p2, p0, Lcom/intermedia/service/ApiUtils$$Lambda$2;->arg$2:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/service/ApiUtils$$Lambda$2;->arg$1:Lcom/intermedia/service/ApiUtils;

    iget-object v1, p0, Lcom/intermedia/service/ApiUtils$$Lambda$2;->arg$2:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/service/ApiUtils;->lambda$checkUIDAvailable$0$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lorg/json/JSONObject;)V

    return-void
.end method
