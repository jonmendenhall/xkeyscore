.class final synthetic Lcom/intermedia/service/JSONRequest$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field private final arg$1:Lcom/android/volley/Response$ErrorListener;

.field private final arg$2:Lcom/android/volley/Response$Listener;


# direct methods
.method constructor <init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/service/JSONRequest$$Lambda$0;->arg$1:Lcom/android/volley/Response$ErrorListener;

    iput-object p2, p0, Lcom/intermedia/service/JSONRequest$$Lambda$0;->arg$2:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/service/JSONRequest$$Lambda$0;->arg$1:Lcom/android/volley/Response$ErrorListener;

    iget-object v1, p0, Lcom/intermedia/service/JSONRequest$$Lambda$0;->arg$2:Lcom/android/volley/Response$Listener;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, v1, p1}, Lcom/intermedia/service/JSONRequest;->lambda$new$1$JSONRequest(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method
