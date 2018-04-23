.class Lcom/neovisionaries/ws/client/ListenerManager;
.super Ljava/lang/Object;
.source "ListenerManager.java"


# instance fields
.field private mCopiedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncNeeded:Z

.field private final mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 35
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    return-void
.end method

.method private callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V
    .locals 1

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {p1, v0, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->handleCallbackError(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getSynchronizedListeners()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mCopiedListeners:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 150
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mCopiedListeners:Ljava/util/List;

    const/4 v2, 0x0

    .line 160
    iput-boolean v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 162
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addListeners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    if-nez v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    goto :goto_0

    .line 79
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 284
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onBinaryFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 292
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnBinaryMessage([B)V
    .locals 3

    .line 364
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onBinaryMessage(Lcom/neovisionaries/ws/client/WebSocket;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 372
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 300
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onCloseFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 308
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnConnectError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 3

    .line 201
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onConnectError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 209
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnConnected(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onConnected(Lcom/neovisionaries/ws/client/WebSocket;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 193
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 252
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onContinuationFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 260
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnDisconnected(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    .locals 3

    .line 219
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/neovisionaries/ws/client/WebSocketListener;->onDisconnected(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 228
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 3

    .line 476
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 480
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 484
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 236
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 244
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 492
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 496
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrameError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 500
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnFrameSent(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 396
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrameSent(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 404
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnFrameUnsent(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 412
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 416
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onFrameUnsent(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 420
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 3

    .line 524
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 528
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 532
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketException;",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .line 508
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 512
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onMessageError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 516
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 316
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onPingFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 324
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 332
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onPongFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 340
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnSendError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 556
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 560
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onSendError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 564
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnSendingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 380
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 384
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onSendingFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 388
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnSendingHandshake(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 604
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onSendingHandshake(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 608
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onStateChanged(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketState;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 177
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 3

    .line 268
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextFrame(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 276
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnTextMessage(Ljava/lang/String;)V
    .locals 3

    .line 348
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 352
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 356
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 3

    .line 540
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onTextMessageError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 548
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnThreadCreated(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 3

    .line 428
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onThreadCreated(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 436
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnThreadStarted(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 3

    .line 444
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onThreadStarted(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 452
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnThreadStopping(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    .locals 3

    .line 460
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1, p2}, Lcom/neovisionaries/ws/client/WebSocketListener;->onThreadStopping(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 468
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callOnUnexpectedError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 3

    .line 572
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ListenerManager;->getSynchronizedListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-interface {v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketListener;->onUnexpectedError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 580
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callHandleCallbackError(Lcom/neovisionaries/ws/client/WebSocketListener;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearListeners()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    monitor-exit v0

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public removeListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    .line 96
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListeners(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketListener;

    if-nez v1, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/ListenerManager;->mSyncNeeded:Z

    goto :goto_0

    .line 121
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
