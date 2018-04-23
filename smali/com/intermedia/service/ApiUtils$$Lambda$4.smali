.class final synthetic Lcom/intermedia/service/ApiUtils$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field private final arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;


# direct methods
.method constructor <init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils$$Lambda$4;->arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/service/ApiUtils$$Lambda$4;->arg$1:Lcom/intermedia/service/ApiUtils$APIResponseListener;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/intermedia/service/ApiUtils;->lambda$submitTrivia$2$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lorg/json/JSONObject;)V

    return-void
.end method
