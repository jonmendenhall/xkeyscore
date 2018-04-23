.class Lcom/neovisionaries/ws/client/FinishThread;
.super Lcom/neovisionaries/ws/client/WebSocketThread;
.source "FinishThread.java"


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 2

    const-string v0, "FinishThread"

    .line 23
    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->FINISH_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-direct {p0, v0, p1, v1}, Lcom/neovisionaries/ws/client/WebSocketThread;-><init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V

    return-void
.end method


# virtual methods
.method public runMain()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/neovisionaries/ws/client/FinishThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->finish()V

    return-void
.end method
