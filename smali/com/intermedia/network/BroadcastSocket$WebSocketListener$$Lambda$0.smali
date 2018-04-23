.class final synthetic Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/network/BroadcastSocketListener;


# direct methods
.method private constructor <init>(Lcom/intermedia/network/BroadcastSocketListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$0;->arg$1:Lcom/intermedia/network/BroadcastSocketListener;

    return-void
.end method

.method static get$Lambda(Lcom/intermedia/network/BroadcastSocketListener;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$0;-><init>(Lcom/intermedia/network/BroadcastSocketListener;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$0;->arg$1:Lcom/intermedia/network/BroadcastSocketListener;

    invoke-interface {v0}, Lcom/intermedia/network/BroadcastSocketListener;->onConnect()V

    return-void
.end method
