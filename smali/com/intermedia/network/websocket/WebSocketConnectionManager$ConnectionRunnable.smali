.class Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;
.super Ljava/lang/Object;
.source "WebSocketConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/network/websocket/WebSocketConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRunnable"
.end annotation


# instance fields
.field private final connectionListener:Lcom/neovisionaries/ws/client/WebSocketAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private reconnectionFuture:Ljava/util/concurrent/Future;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;


# direct methods
.method constructor <init>(Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/neovisionaries/ws/client/WebSocketAdapter;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/websocket/WebSocketConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance p1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;

    invoke-direct {p1, p0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;-><init>(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;)V

    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->connectionListener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    .line 168
    iput-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    return-void
.end method

.method static synthetic access$400(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->enqueueReconnection()V

    return-void
.end method

.method private declared-synchronized enqueueReconnection()V
    .locals 4

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->reconnectionFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$1100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;

    iget-object v2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    iget-object v3, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    invoke-direct {v1, v2, v3}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;-><init>(Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/neovisionaries/ws/client/WebSocketAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->reconnectionFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 204
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 173
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/logging/events/WebSocketState$Connecting;

    const-string v2, "WebSocketConnectionMgr"

    iget-object v3, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v3}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$300(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/intermedia/util/logging/events/WebSocketState$Connecting;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 175
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$500(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->enqueueReconnection()V

    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$300(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$302(Lcom/intermedia/network/websocket/WebSocketConnectionManager;I)I

    .line 182
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketFactory;

    invoke-direct {v0}, Lcom/neovisionaries/ws/client/WebSocketFactory;-><init>()V

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$700(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$800()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/neovisionaries/ws/client/WebSocketFactory;->createSocket(Ljava/lang/String;I)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    const-string v1, "Authorization"

    const-string v3, "Bearer %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    .line 183
    invoke-static {v5}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$600(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/neovisionaries/ws/client/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    const-string v1, "x-hq-client"

    const-string v3, "Android/%s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "1.7.0"

    aput-object v4, v2, v6

    .line 185
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    const-string v1, "x-hq-test-key"

    const-string v2, ""

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->connectionListener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    .line 187
    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    invoke-virtual {v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->addListener(Lcom/neovisionaries/ws/client/WebSocketListener;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$900(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "x-hq-stk"

    .line 189
    iget-object v2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v2}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$900(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/neovisionaries/ws/client/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 192
    :cond_1
    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->connect()Lcom/neovisionaries/ws/client/WebSocket;

    .line 193
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$1000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "websocket_connected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/neovisionaries/ws/client/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/logging/events/WebSocketState$Exception;

    const-string v2, "WebSocketConnectionMgr"

    const-string v3, "Connection failed"

    invoke-direct {v1, v2, v3}, Lcom/intermedia/util/logging/events/WebSocketState$Exception;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 196
    invoke-direct {p0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->enqueueReconnection()V

    :goto_0
    return-void
.end method
