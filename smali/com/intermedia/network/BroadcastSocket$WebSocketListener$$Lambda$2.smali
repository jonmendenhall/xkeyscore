.class final synthetic Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/network/BroadcastSocket$WebSocketListener;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/network/BroadcastSocket$WebSocketListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;->arg$1:Lcom/intermedia/network/BroadcastSocket$WebSocketListener;

    iput-object p2, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;->arg$1:Lcom/intermedia/network/BroadcastSocket$WebSocketListener;

    iget-object v1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->lambda$onTextMessage$1$BroadcastSocket$WebSocketListener(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
