.class final synthetic Lcom/intermedia/network/BroadcastSocket$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;


# instance fields
.field private final arg$1:Lcom/intermedia/network/BroadcastSocket;


# direct methods
.method constructor <init>(Lcom/intermedia/network/BroadcastSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket$$Lambda$0;->arg$1:Lcom/intermedia/network/BroadcastSocket;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$$Lambda$0;->arg$1:Lcom/intermedia/network/BroadcastSocket;

    invoke-virtual {v0}, Lcom/intermedia/network/BroadcastSocket;->lambda$connect$0$BroadcastSocket()V

    return-void
.end method
