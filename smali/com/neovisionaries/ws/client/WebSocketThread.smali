.class abstract Lcom/neovisionaries/ws/client/WebSocketThread;
.super Ljava/lang/Thread;
.source "WebSocketThread.java"


# instance fields
.field private final mThreadType:Lcom/neovisionaries/ws/client/ThreadType;

.field protected final mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 30
    iput-object p3, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mThreadType:Lcom/neovisionaries/ws/client/ThreadType;

    return-void
.end method


# virtual methods
.method public callOnThreadCreated()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mThreadType:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-virtual {v0, v1, p0}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnThreadCreated(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mThreadType:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-virtual {v0, v1, p0}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnThreadStarted(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocketThread;->runMain()V

    if-eqz v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketThread;->mThreadType:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-virtual {v0, v1, p0}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnThreadStopping(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method

.method protected abstract runMain()V
.end method
