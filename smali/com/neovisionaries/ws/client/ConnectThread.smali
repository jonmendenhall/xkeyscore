.class Lcom/neovisionaries/ws/client/ConnectThread;
.super Lcom/neovisionaries/ws/client/WebSocketThread;
.source "ConnectThread.java"


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 2

    const-string v0, "ConnectThread"

    .line 23
    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-direct {p0, v0, p1, v1}, Lcom/neovisionaries/ws/client/WebSocketThread;-><init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V

    return-void
.end method

.method private handleError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ConnectThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 46
    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnConnectError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    return-void
.end method


# virtual methods
.method public runMain()V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ConnectThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->connect()Lcom/neovisionaries/ws/client/WebSocket;
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ConnectThread;->handleError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    :goto_0
    return-void
.end method
