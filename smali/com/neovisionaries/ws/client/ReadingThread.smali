.class Lcom/neovisionaries/ws/client/ReadingThread;
.super Lcom/neovisionaries/ws/client/WebSocketThread;
.source "ReadingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;
    }
.end annotation


# instance fields
.field private mCloseDelay:J

.field private mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

.field private mCloseLock:Ljava/lang/Object;

.field private mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

.field private mCloseTimer:Ljava/util/Timer;

.field private mContinuation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mNotWaitForCloseFrame:Z

.field private final mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

.field private mStopRequested:Z


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 2

    const-string v0, "ReadingThread"

    .line 53
    sget-object v1, Lcom/neovisionaries/ws/client/ThreadType;->READING_THREAD:Lcom/neovisionaries/ws/client/ThreadType;

    invoke-direct {p0, v0, p1, v1}, Lcom/neovisionaries/ws/client/WebSocketThread;-><init>(Ljava/lang/String;Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/ThreadType;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseLock:Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocket;->getPerMessageCompressionExtension()Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    return-void
.end method

.method private callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnBinaryMessage([B)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnBinaryMessage([B)V

    return-void
.end method

.method private callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    return-void
.end method

.method private callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    return-void
.end method

.method private callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocketException;",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V

    return-void
.end method

.method private callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private callOnTextMessage(Ljava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextMessage(Ljava/lang/String;)V

    return-void
.end method

.method private callOnTextMessage([B)V
    .locals 5

    .line 235
    :try_start_0
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Misc;->toStringUTF8([B)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert payload data into a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 249
    invoke-direct {p0, v1, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    :goto_0
    return-void
.end method

.method private callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnTextMessageError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    return-void
.end method

.method private cancelClose()V
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1158
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->cancelCloseTask()V

    .line 1159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelCloseTask()V
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1168
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;->cancel()Z

    .line 1174
    iput-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    :cond_1
    return-void
.end method

.method private concatenatePayloads(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)[B"
        }
    .end annotation

    .line 843
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 846
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 849
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 852
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 858
    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 874
    :goto_1
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to concatenate payloads of multiple frames to construct a message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 879
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 880
    invoke-direct {p0, v1, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnMessageError(Lcom/neovisionaries/ws/client/WebSocketException;Ljava/util/List;)V

    const/16 p1, 0x3f1

    .line 885
    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    .line 888
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    const/4 p1, 0x0

    return-object p1
.end method

.method private createCloseFrame(Lcom/neovisionaries/ws/client/WebSocketException;)Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 3

    .line 688
    sget-object v0, Lcom/neovisionaries/ws/client/ReadingThread$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketError:[I

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketException;->getError()Lcom/neovisionaries/ws/client/WebSocketError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3ea

    const/16 v2, 0x3f0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x3f1

    .line 730
    :goto_0
    :pswitch_2
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decompress([B)[B
    .locals 1

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;->decompress([B)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 927
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 928
    invoke-direct {p0, v0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnMessageDecompressionError(Lcom/neovisionaries/ws/client/WebSocketException;[B)V

    const/16 p1, 0x3eb

    .line 933
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    .line 936
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    const/4 p1, 0x0

    return-object p1
.end method

.method private getMessage(Lcom/neovisionaries/ws/client/WebSocketFrame;)[B
    .locals 2

    .line 898
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 905
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->decompress([B)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getMessage(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketFrame;",
            ">;)[B"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->concatenatePayloads(Ljava/util/List;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 830
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->decompress([B)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private handleBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 2

    .line 973
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 976
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 987
    :cond_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->getMessage(Lcom/neovisionaries/ws/client/WebSocketFrame;)[B

    move-result-object p1

    .line 990
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnBinaryMessage([B)V

    return v1
.end method

.method private handleCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 4

    .line 1000
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getStateManager()Lcom/neovisionaries/ws/client/StateManager;

    move-result-object v0

    .line 1003
    iput-object p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    .line 1007
    monitor-enter v0

    .line 1010
    :try_start_0
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/StateManager;->getState()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v1

    .line 1013
    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSED:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v1, v2, :cond_0

    .line 1016
    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/StateManager;->changeToClosing(Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;)V

    .line 1028
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1032
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnStateChanged(Lcom/neovisionaries/ws/client/WebSocketState;)V

    .line 1041
    :cond_1
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return v3

    :catchall_0
    move-exception p1

    .line 1032
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 3

    .line 770
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 773
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 784
    :cond_0
    iget-object p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->getMessage(Ljava/util/List;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 794
    :cond_1
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isTextFrame()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 797
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessage([B)V

    goto :goto_0

    .line 802
    :cond_2
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnBinaryMessage([B)V

    .line 806
    :goto_0
    iget-object p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v0
.end method

.method private handleFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1

    .line 737
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 740
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p1, 0x1

    return p1

    .line 758
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handlePongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 755
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handlePingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 752
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleCloseFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 749
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleBinaryFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 746
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 743
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->handleContinuationFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1

    .line 1051
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnPingFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 1062
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object p1

    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->createPongFrame([B)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object p1

    .line 1065
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0, p1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    const/4 p1, 0x1

    return p1
.end method

.method private handlePongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 0

    .line 1075
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnPongFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    const/4 p1, 0x1

    return p1
.end method

.method private handleTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 2

    .line 946
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 949
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 960
    :cond_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->getMessage(Lcom/neovisionaries/ws/client/WebSocketFrame;)[B

    move-result-object p1

    .line 963
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnTextMessage([B)V

    return v1
.end method

.method private main()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->onReadingThreadStarted()V

    .line 90
    :cond_0
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v0, :cond_1

    .line 94
    monitor-exit p0

    goto :goto_0

    .line 96
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, v0}, Lcom/neovisionaries/ws/client/ReadingThread;->handleFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->waitForCloseFrame()V

    .line 120
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->cancelClose()V

    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyFinished()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->onReadingThreadFinished(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;
    .locals 7

    const/4 v0, 0x0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocket;->getInput()Lcom/neovisionaries/ws/client/WebSocketInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_3

    .line 335
    :try_start_1
    invoke-direct {p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v1, v0

    :goto_0
    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v1, v0

    .line 358
    :goto_1
    iget-boolean v3, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 367
    :cond_0
    new-instance v3, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketError;->IO_ERROR_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An I/O error occurred while a frame was being read from the web socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v1, v0

    .line 342
    :goto_2
    iget-boolean v3, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v3, :cond_1

    return-object v0

    .line 351
    :cond_1
    new-instance v3, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v4, Lcom/neovisionaries/ws/client/WebSocketError;->INTERRUPTED_IN_READING:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interruption occurred while a frame was being read from the web socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    :goto_3
    instance-of v2, v3, Lcom/neovisionaries/ws/client/NoMoreFrameException;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 385
    iput-boolean v4, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mNotWaitForCloseFrame:Z

    .line 388
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocket;->isMissingCloseFrameAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    :cond_2
    if-eqz v4, :cond_3

    .line 397
    invoke-direct {p0, v3}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 398
    invoke-direct {p0, v3, v1}, Lcom/neovisionaries/ws/client/ReadingThread;->callOnFrameError(Lcom/neovisionaries/ws/client/WebSocketException;Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 402
    :cond_3
    invoke-direct {p0, v3}, Lcom/neovisionaries/ws/client/ReadingThread;->createCloseFrame(Lcom/neovisionaries/ws/client/WebSocketException;)Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v2, v1}, Lcom/neovisionaries/ws/client/WebSocket;->sendFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)Lcom/neovisionaries/ws/client/WebSocket;

    return-object v0
.end method

.method private scheduleClose()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1140
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->cancelCloseTask()V

    .line 1141
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->scheduleCloseTask()V

    .line 1142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleCloseTask()V
    .locals 4

    .line 1148
    new-instance v0, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;-><init>(Lcom/neovisionaries/ws/client/ReadingThread;Lcom/neovisionaries/ws/client/ReadingThread$1;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    .line 1149
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ReadingThreadCloseTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    .line 1150
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseTask:Lcom/neovisionaries/ws/client/ReadingThread$CloseTask;

    iget-wide v2, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseDelay:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private verifyFrame(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBits(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameOpcode(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 421
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameMask(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 424
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameFragmentation(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyFrameSize(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private verifyFrameFragmentation(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 605
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getFin()Z

    move-result p1

    if-nez p1, :cond_0

    .line 611
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "A control frame is fragmented."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 624
    :goto_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isContinuationFrame()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    .line 630
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "A continuation frame was detected although a continuation had not started."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 644
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "A non-control frame was detected although the existing continuation had not been closed."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method private verifyFrameMask(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getMask()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->FRAME_MASKED:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "A frame from the server is masked."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private verifyFrameOpcode(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 563
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 570
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->UNKNOWN_OPCODE:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A frame has an unknown opcode: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getOpcode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private verifyFrameSize(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 654
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 666
    :cond_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getPayload()[B

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x7d

    .line 674
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 677
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The payload size of a control frame exceeds the maximum size (125 bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private verifyReservedBit1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mPMCE:Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit1ForPMCE(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv1()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 475
    :cond_1
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "The RSV1 bit of a frame is set unexpectedly."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyReservedBit1ForPMCE(Lcom/neovisionaries/ws/client/WebSocketFrame;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 487
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isTextFrame()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isBinaryFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private verifyReservedBit2(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 505
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv2()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "The RSV2 bit of a frame is set unexpectedly."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyReservedBit3(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketFrame;->getRsv3()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 529
    :cond_0
    new-instance p1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "The RSV3 bit of a frame is set unexpectedly."

    invoke-direct {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyReservedBits(Lcom/neovisionaries/ws/client/WebSocketFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit1(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 446
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit2(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/ReadingThread;->verifyReservedBit3(Lcom/neovisionaries/ws/client/WebSocketFrame;)V

    return-void
.end method

.method private waitForCloseFrame()V
    .locals 2

    .line 1084
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mNotWaitForCloseFrame:Z

    if-eqz v0, :cond_0

    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    if-eqz v0, :cond_1

    return-void

    .line 1099
    :cond_1
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->scheduleClose()V

    .line 1106
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getInput()Lcom/neovisionaries/ws/client/WebSocketInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketInputStream;->readFrame()Lcom/neovisionaries/ws/client/WebSocketFrame;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocketFrame;->isCloseFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    iput-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseFrame:Lcom/neovisionaries/ws/client/WebSocketFrame;

    goto :goto_0

    .line 1122
    :cond_3
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method requestStop(J)V
    .locals 1

    .line 126
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    if-eqz v0, :cond_0

    .line 130
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mStopRequested:Z

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->interrupt()V

    .line 150
    iput-wide p1, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mCloseDelay:J

    .line 151
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->scheduleClose()V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public runMain()V
    .locals 5

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->main()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/neovisionaries/ws/client/WebSocketException;

    sget-object v2, Lcom/neovisionaries/ws/client/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/neovisionaries/ws/client/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An uncaught throwable was detected in the reading thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lcom/neovisionaries/ws/client/ReadingThread;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->getListenerManager()Lcom/neovisionaries/ws/client/ListenerManager;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/ListenerManager;->callOnUnexpectedError(Lcom/neovisionaries/ws/client/WebSocketException;)V

    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/ReadingThread;->notifyFinished()V

    return-void
.end method
