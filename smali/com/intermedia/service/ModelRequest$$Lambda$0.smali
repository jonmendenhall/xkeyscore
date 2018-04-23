.class final synthetic Lcom/intermedia/service/ModelRequest$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Lcom/android/volley/Response$Listener;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/service/ModelRequest$$Lambda$0;->arg$1:Ljava/lang/Class;

    iput-object p2, p0, Lcom/intermedia/service/ModelRequest$$Lambda$0;->arg$2:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/service/ModelRequest$$Lambda$0;->arg$1:Ljava/lang/Class;

    iget-object v1, p0, Lcom/intermedia/service/ModelRequest$$Lambda$0;->arg$2:Lcom/android/volley/Response$Listener;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, v1, p1}, Lcom/intermedia/service/ModelRequest;->lambda$new$0$ModelRequest(Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method
