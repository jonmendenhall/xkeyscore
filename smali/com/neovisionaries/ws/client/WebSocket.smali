.class public Lcom/neovisionaries/ws/client/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# static fields
.field private static final DEFAULT_CLOSE_DELAY:J = 0x2710L


# instance fields
.field private mAgreedExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mAgreedProtocol:Ljava/lang/String;

.field private mAutoFlush:Z

.field private mClientCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mExtended:Z

.field private mFrameQueueSize:I

.field private mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

.field private mInput:Lcom/neovisionaries/ws/client/WebSocketInputStream;

.field private final mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

.field private mMaxPayloadSize:I

.field private mMissingCloseFrameAllowed:Z

.field private mOnConnectedCalled:Z

.field private mOnConnectedCalledLock:Ljava/lang/Object;

.field private mOutput:Lcom/neovisionaries/ws/client/WebSocketOutputStream;

.field private mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

.field private final mPingSender:Lcom/neovisionaries/ws/client/PingSender;

.field private final mPongSender:Lcom/neovisionaries/ws/client/PongSender;

.field private mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

.field private mReadingThreadFinished:Z

.field private mReadingThreadStarted:Z

.field private mServerCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mServerHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

.field private final mStateManager:Lcom/neovisionaries/ws/client/StateManager;

.field private final mThreadsLock:Ljava/lang/Object;

.field private final mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

.field private mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

.field private mWritingThreadFinished:Z

.field private mWritingThreadStarted:Z


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/WebSocketFactory;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neovisionaries/ws/client/SocketConnector;)V
    .locals 1

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1079
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    .line 1080
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    .line 1084
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalledLock:Ljava/lang/Object;

    .line 1097
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    .line 1098
    iput-object p6, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    .line 1099
    new-instance p1, Lcom/neovisionaries/ws/client/StateManager;

    invoke-direct {p1}, Lcom/neovisionaries/ws/client/StateManager;-><init>()V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    .line 1100
    new-instance p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/neovisionaries/ws/client/HandshakeBuilder;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    .line 1101
    new-instance p1, Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-direct {p1, p0}, Lcom/neovisionaries/ws/client/ListenerManager;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    .line 1102
    new-instance p1, Lcom/neovisionaries/ws/client/PingSender;

    new-instance p2, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;

    invoke-direct {p2}, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/neovisionaries/ws/client/PingSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    .line 1103
    new-instance p1, Lcom/neovisionaries/ws/client/PongSender;

    new-instance p2, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;

    invoke-direct {p2}, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/neovisionaries/ws/client/PongSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    return-void
.end method

.method private callOnConnectedIfNotYet()V
    .locals 2

    .line 3444
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3447
    :try_start_0
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalled:Z

    if-eqz v1, :cond_0

    .line 3450
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3453
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOnConnectedCalled:Z

    .line 3454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3457
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnConnected(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v1

    .line 3454
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private changeStateOnConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3083
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 3086
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_0

    .line 3088
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->NOT_IN_CREATED_STATE:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v3, "The current state of the WebSocket is not CREATED."

    invoke-direct {v1, v2, v3}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v1

    .line 3094
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3095
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3098
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    return-void

    :catchall_0
    move-exception v1

    .line 3095
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findAgreedPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;
    .locals 4

    .line 3582
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3587
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 3589
    instance-of v3, v2, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v3, :cond_1

    .line 3591
    check-cast v2, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    return-object v2

    :cond_2
    return-object v1
.end method

.method private finishAsynchronously()V
    .locals 1

    .line 3568
    new-instance v0, Lcom/neovisionaries/ws/client/FinishThread;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/FinishThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 3571
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketThread;->callOnThreadCreated()V

    .line 3573
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketThread;->start()V

    return-void
.end method

.method private static generateWebSocketKey()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 3199
    new-array v0, v0, [B

    .line 3202
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->nextBytes([B)[B

    .line 3205
    invoke-static {v0}, Lcom/neovisionaries/ws/client/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInState(Lcom/neovisionaries/ws/client/WebSocketState;)Z
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 1261
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onThreadsFinished()V
    .locals 0

    .line 3528
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->finish()V

    return-void
.end method

.method private onThreadsStarted()V
    .locals 1

    .line 3470
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->start()V

    .line 3473
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->start()V

    return-void
.end method

.method private openInputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3145
    :try_start_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    .line 3146
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3151
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_INPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the input stream of the raw socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private openOutputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3168
    :try_start_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 3169
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3174
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->SOCKET_OUTPUT_STREAM_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get the output stream from the raw socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3176
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketInputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3244
    new-instance v0, Lcom/neovisionaries/ws/client/HandshakeReader;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/HandshakeReader;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/HandshakeReader;->readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private shakeHands()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3108
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 3111
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->openInputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketInputStream;

    move-result-object v1

    .line 3114
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->openOutputStream(Ljava/net/Socket;)Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    move-result-object v0

    .line 3117
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocket;->generateWebSocketKey()Ljava/lang/String;

    move-result-object v2

    .line 3120
    invoke-direct {p0, v0, v2}, Lcom/neovisionaries/ws/client/WebSocket;->writeHandshake(Lcom/neovisionaries/ws/client/WebSocketOutputStream;Ljava/lang/String;)V

    .line 3123
    invoke-direct {p0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->readHandshake(Lcom/neovisionaries/ws/client/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 3127
    iput-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mInput:Lcom/neovisionaries/ws/client/WebSocketInputStream;

    .line 3128
    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOutput:Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    return-object v2
.end method

.method private splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ")",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation

    .line 2603
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMaxPayloadSize:I

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    invoke-static {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;ILcom/neovisionaries/ws/client/PerMessageCompressionExtension;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private startThreads()V
    .locals 3

    .line 3261
    new-instance v0, Lcom/neovisionaries/ws/client/ReadingThread;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ReadingThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 3262
    new-instance v1, Lcom/neovisionaries/ws/client/WritingThread;

    invoke-direct {v1, p0}, Lcom/neovisionaries/ws/client/WritingThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 3264
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3266
    :try_start_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

    .line 3267
    iput-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 3268
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3271
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnThreadCreated()V

    .line 3272
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WritingThread;->callOnThreadCreated()V

    .line 3274
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ReadingThread;->start()V

    .line 3275
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WritingThread;->start()V

    return-void

    :catchall_0
    move-exception v0

    .line 3268
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopThreads(J)V
    .locals 4

    .line 3295
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3297
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

    .line 3298
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    const/4 v3, 0x0

    .line 3300
    iput-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThread:Lcom/neovisionaries/ws/client/ReadingThread;

    .line 3301
    iput-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    .line 3302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3306
    invoke-virtual {v1, p1, p2}, Lcom/neovisionaries/ws/client/ReadingThread;->requestStop(J)V

    :cond_0
    if-eqz v2, :cond_1

    .line 3311
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WritingThread;->requestStop()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 3302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private writeHandshake(Lcom/neovisionaries/ws/client/WebSocketOutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 3215
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setKey(Ljava/lang/String;)V

    .line 3216
    iget-object p2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->buildRequestLine()Ljava/lang/String;

    move-result-object p2

    .line 3217
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->buildHeaders()Ljava/util/List;

    move-result-object v0

    .line 3218
    invoke-static {p2, v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->build(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 3221
    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v2, p2, v0}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnSendingHandshake(Ljava/lang/String;Ljava/util/List;)V

    .line 3226
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->write(Ljava/lang/String;)V

    .line 3227
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3232
    new-instance p2, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->OPENING_HAHDSHAKE_REQUEST_FAILURE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send an opening handshake request to the server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3234
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    return-object p0
.end method

.method public addExtension(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addExtension(Ljava/lang/String;)V

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1976
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V

    return-object p0
.end method

.method public addListeners(Ljava/util/List;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)",
            "Lcom/neovisionaries/ws/client/WebSocket;"
        }
    .end annotation

    .line 1996
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->addListeners(Ljava/util/List;)V

    return-object p0
.end method

.method public addProtocol(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addProtocol(Ljava/lang/String;)V

    return-object p0
.end method

.method public clearExtensions()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearExtensions()V

    return-object p0
.end method

.method public clearHeaders()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearHeaders()V

    return-object p0
.end method

.method public clearListeners()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2051
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ListenerManager;->clearListeners()V

    return-object p0
.end method

.method public clearProtocols()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearProtocols()V

    return-object p0
.end method

.method public clearUserInfo()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->clearUserInfo()V

    return-object p0
.end method

.method public connect()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 2144
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->changeStateOnConnect()V

    .line 2152
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->connect()V

    .line 2155
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->shakeHands()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerHeaders:Ljava/util/Map;

    .line 2176
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->findAgreedPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    .line 2179
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2182
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2185
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->startThreads()V

    return-object p0

    :catch_0
    move-exception v0

    .line 2160
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/SocketConnector;->closeSilently()V

    .line 2163
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2166
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 2169
    throw v0
.end method

.method public connect(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            ">;"
        }
    .end annotation

    .line 2219
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->connectable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public connectAsynchronously()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3

    .line 2255
    new-instance v0, Lcom/neovisionaries/ws/client/ConnectThread;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/ConnectThread;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    .line 2258
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    if-eqz v1, :cond_0

    .line 2262
    sget-object v2, Lcom/neovisionaries/ws/client/ThreadType;->CONNECT_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-virtual {v1, v2, v0}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnThreadCreated(Lcom/neovisionaries/ws/client/ThreadType;Ljava/lang/Thread;)V

    .line 2265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method public connectable()Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            ">;"
        }
    .end annotation

    .line 2238
    new-instance v0, Lcom/neovisionaries/ws/client/Connectable;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/Connectable;-><init>(Lcom/neovisionaries/ws/client/WebSocket;)V

    return-object v0
.end method

.method public disconnect()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    .line 2284
    invoke-virtual {p0, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    const/4 v0, 0x0

    .line 2308
    invoke-virtual {p0, p1, v0}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2

    const-wide/16 v0, 0x2710

    .line 2373
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;J)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public disconnect(ILjava/lang/String;J)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3

    .line 2421
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 2423
    :try_start_0
    sget-object v1, Lcom/neovisionaries/ws/client/WebSocket$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketState:[I

    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2442
    monitor-exit v0

    goto :goto_0

    .line 2446
    :pswitch_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->CLIENT:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->changeToClosing(Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;)V

    .line 2449
    invoke-static {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    .line 2452
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 2453
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    iget-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object p2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-gez p1, :cond_0

    const-wide/16 p3, 0x2710

    .line 2466
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/neovisionaries/ws/client/WebSocket;->stopThreads(J)V

    return-object p0

    .line 2426
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->finishAsynchronously()V

    .line 2427
    monitor-exit v0

    return-object p0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p1

    .line 2453
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public disconnect(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    const/16 v0, 0x3e8

    .line 2336
    invoke-virtual {p0, v0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->isInState(Lcom/neovisionaries/ws/client/WebSocketState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->finish()V

    .line 1203
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method finish()V
    .locals 4

    .line 3535
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->stop()V

    .line 3536
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->stop()V

    .line 3541
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3548
    :catch_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 3551
    :try_start_1
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1, v2}, Lcom/neovisionaries/ws/client/StateManager;->setState(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3552
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3555
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 3558
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/WebSocket;->mClientCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    iget-object v3, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    .line 3559
    invoke-virtual {v3}, Lcom/neovisionaries/ws/client/StateManager;->getClosedByServer()Z

    move-result v3

    .line 3558
    invoke-virtual {v0, v1, v2, v3}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnDisconnected(Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 3552
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 1668
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    .line 1670
    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_0

    .line 1672
    monitor-exit v0

    return-object p0

    .line 1674
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    if-eqz v0, :cond_1

    .line 1683
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WritingThread;->queueFlush()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception v1

    .line 1674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAgreedExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;"
        }
    .end annotation

    .line 2485
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getAgreedProtocol()Ljava/lang/String;
    .locals 1

    .line 2502
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameQueueSize()I
    .locals 1

    .line 1701
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    return v0
.end method

.method getHandshakeBuilder()Lcom/neovisionaries/ws/client/HandshakeBuilder;
    .locals 1

    .line 3357
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    return-object v0
.end method

.method getInput()Lcom/neovisionaries/ws/client/WebSocketInputStream;
    .locals 1

    .line 3321
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mInput:Lcom/neovisionaries/ws/client/WebSocketInputStream;

    return-object v0
.end method

.method getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;
    .locals 1

    .line 3348
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    return-object v0
.end method

.method public getMaxPayloadSize()I
    .locals 1

    .line 1762
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMaxPayloadSize:I

    return v0
.end method

.method getOutput()Lcom/neovisionaries/ws/client/WebSocketOutputStream;
    .locals 1

    .line 3330
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mOutput:Lcom/neovisionaries/ws/client/WebSocketOutputStream;

    return-object v0
.end method

.method getPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;
    .locals 1

    .line 3606
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPerMessageCompressionExtension:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    return-object v0
.end method

.method public getPingInterval()J
    .locals 2

    .line 1812
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->getInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPingPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;
    .locals 1

    .line 1915
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PingSender;->getPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getPongInterval()J
    .locals 2

    .line 1856
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->getInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPongPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/PongSender;->getPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/neovisionaries/ws/client/WebSocketState;
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStateManager()Lcom/neovisionaries/ws/client/StateManager;
    .locals 1

    .line 3339
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public isAutoFlush()Z
    .locals 1

    .line 1582
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 1549
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    return v0
.end method

.method public isMissingCloseFrameAllowed()Z
    .locals 1

    .line 1626
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1250
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->isInState(Lcom/neovisionaries/ws/client/WebSocketState;)Z

    move-result v0

    return v0
.end method

.method onReadingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2

    .line 3482
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3484
    :try_start_0
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadFinished:Z

    .line 3485
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mServerCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 3487
    iget-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadFinished:Z

    if-nez p1, :cond_0

    .line 3490
    monitor-exit v0

    return-void

    .line 3492
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3495
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsFinished()V

    return-void

    :catchall_0
    move-exception p1

    .line 3492
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onReadingThreadStarted()V
    .locals 2

    .line 3386
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3388
    :try_start_0
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadStarted:Z

    .line 3390
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadStarted:Z

    .line 3395
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3398
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->callOnConnectedIfNotYet()V

    if-eqz v1, :cond_0

    .line 3403
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsStarted()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 3395
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onWritingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2

    .line 3504
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3506
    :try_start_0
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadFinished:Z

    .line 3507
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mClientCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 3509
    iget-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadFinished:Z

    if-nez p1, :cond_0

    .line 3512
    monitor-exit v0

    return-void

    .line 3514
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsFinished()V

    return-void

    :catchall_0
    move-exception p1

    .line 3514
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onWritingThreadStarted()V
    .locals 2

    .line 3415
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3417
    :try_start_0
    iput-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThreadStarted:Z

    .line 3419
    iget-boolean v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mReadingThreadStarted:Z

    .line 3424
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3427
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->callOnConnectedIfNotYet()V

    if-eqz v1, :cond_0

    .line 3432
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocket;->onThreadsStarted()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 3424
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recreate()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mSocketConnector:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/SocketConnector;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->recreate(I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public recreate(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 1167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given timeout value is negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWebSocketFactory:Lcom/neovisionaries/ws/client/WebSocketFactory;

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/net/URI;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    .line 1173
    new-instance v0, Lcom/neovisionaries/ws/client/HandshakeBuilder;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-direct {v0, v1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;-><init>(Lcom/neovisionaries/ws/client/HandshakeBuilder;)V

    iput-object v0, p1, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    .line 1174
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPingInterval()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setPingInterval(J)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1175
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPongInterval()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setPongInterval(J)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1176
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPingPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neovisionaries/ws/client/WebSocket;->setPingPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1177
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/WebSocket;->getPongPayloadGenerator()Lcom/neovisionaries/ws/client/PayloadGenerator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neovisionaries/ws/client/WebSocket;->setPongPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1178
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    iput-boolean v0, p1, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    .line 1179
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    iput-boolean v0, p1, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    .line 1180
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    iput-boolean v0, p1, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    .line 1181
    iget v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    iput v0, p1, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    .line 1184
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ListenerManager;->getListeners()Ljava/util/List;

    move-result-object v0

    .line 1185
    monitor-enter v0

    .line 1187
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/neovisionaries/ws/client/WebSocket;->addListeners(Ljava/util/List;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 1188
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    return-object p0
.end method

.method public removeExtensions(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeExtensions(Ljava/lang/String;)V

    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeHeaders(Ljava/lang/String;)V

    return-object p0
.end method

.method public removeListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->removeListener(Lcom/neovisionaries/ws/client/WebSocketListener;)V

    return-object p0
.end method

.method public removeListeners(Ljava/util/List;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketListener;",
            ">;)",
            "Lcom/neovisionaries/ws/client/WebSocket;"
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mListenerManager:Lcom/neovisionaries/ws/client/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->removeListeners(Ljava/util/List;)V

    return-object p0
.end method

.method public removeProtocol(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->removeProtocol(Ljava/lang/String;)V

    return-object p0
.end method

.method public sendBinary([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2843
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createBinaryFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendBinary([BZ)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2869
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createBinaryFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendClose()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2887
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendClose(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2911
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(I)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendClose(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2941
    invoke-static {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendContinuation()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2628
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendContinuation(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2680
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendContinuation(Ljava/lang/String;Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2706
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendContinuation(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2651
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendContinuation([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2735
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendContinuation([BZ)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2761
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createContinuationFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 2549
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    monitor-enter v0

    .line 2551
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mStateManager:Lcom/neovisionaries/ws/client/StateManager;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    .line 2553
    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_1

    .line 2555
    monitor-exit v0

    return-object p0

    .line 2557
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mWritingThread:Lcom/neovisionaries/ws/client/WritingThread;

    if-nez v0, :cond_2

    return-object p0

    .line 2577
    :cond_2
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->splitIfNecessary(Lcom/neovisionaries/ws/client/WebSocketFrame;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2586
    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WritingThread;->queueFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    goto :goto_1

    .line 2590
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 2593
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WritingThread;->queueFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0

    :catchall_0
    move-exception p1

    .line 2557
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendPing()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 2959
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPing(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 3009
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendPing([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2984
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPingFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendPong()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 3027
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public sendPong(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 3077
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendPong([B)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 3052
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendText(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2789
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createTextFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method public sendText(Ljava/lang/String;Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 2815
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createTextFrame(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->setFin(Z)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p1

    return-object p1
.end method

.method setAgreedExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;)V"
        }
    .end annotation

    .line 3366
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedExtensions:Ljava/util/List;

    return-void
.end method

.method setAgreedProtocol(Ljava/lang/String;)V
    .locals 0

    .line 3375
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAgreedProtocol:Ljava/lang/String;

    return-void
.end method

.method public setAutoFlush(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 1600
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mAutoFlush:Z

    return-object p0
.end method

.method public setExtended(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 1564
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mExtended:Z

    return-object p0
.end method

.method public setFrameQueueSize(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 1741
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size must not be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1744
    :cond_0
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mFrameQueueSize:I

    return-object p0
.end method

.method public setMaxPayloadSize(I)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 1791
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size must not be negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1794
    :cond_0
    iput p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMaxPayloadSize:I

    return-object p0
.end method

.method public setMissingCloseFrameAllowed(Z)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 1650
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/WebSocket;->mMissingCloseFrameAllowed:Z

    return-object p0
.end method

.method public setPingInterval(J)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1838
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/PingSender;->setInterval(J)V

    return-object p0
.end method

.method public setPingPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPingSender:Lcom/neovisionaries/ws/client/PingSender;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PingSender;->setPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    return-object p0
.end method

.method public setPongInterval(J)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1899
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/PongSender;->setInterval(J)V

    return-object p0
.end method

.method public setPongPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1959
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mPongSender:Lcom/neovisionaries/ws/client/PongSender;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PongSender;->setPayloadGenerator(Lcom/neovisionaries/ws/client/PayloadGenerator;)V

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setUserInfo(Ljava/lang/String;)V

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocket;->mHandshakeBuilder:Lcom/neovisionaries/ws/client/HandshakeBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
