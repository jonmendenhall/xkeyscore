.class public Lcom/intermedia/network/websocket/WebSocketConnectionManager;
.super Ljava/lang/Object;
.source "WebSocketConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;,
        Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;,
        Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:Ljava/lang/String; = "websocket_connected"

.field public static final ACTION_RECONNECTING:Ljava/lang/String; = "websocket_reconnecting"

.field public static final MAX_ATTEMPTS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "WebSocketConnectionMgr"

.field private static final TIMEOUT:I


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private connectionAttempts:I

.field private connectionFailedListener:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;

.field private connectionFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private volatile isReleasing:Z

.field private final localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final segmentToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final socketUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private webSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/network/NetworkConnectivityManager;Landroid/support/v4/content/LocalBroadcastManager;Lcom/intermedia/util/logging/DebugReporter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/network/NetworkConnectivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/support/v4/content/LocalBroadcastManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->accessToken:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->segmentToken:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->socketUrl:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    .line 64
    iput-object p5, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 65
    iput-object p6, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->isReleasing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/util/logging/DebugReporter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    return-object p0
.end method

.method static synthetic access$202(Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/neovisionaries/ws/client/WebSocket;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionAttempts:I

    return p0
.end method

.method static synthetic access$302(Lcom/intermedia/network/websocket/WebSocketConnectionManager;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionAttempts:I

    return p1
.end method

.method static synthetic access$500(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/network/NetworkConnectivityManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->socketUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 28
    sget v0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->TIMEOUT:I

    return v0
.end method

.method static synthetic access$900(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->segmentToken:Ljava/lang/String;

    return-object p0
.end method

.method private connect(Lcom/neovisionaries/ws/client/WebSocketAdapter;J)V
    .locals 2
    .param p1    # Lcom/neovisionaries/ws/client/WebSocketAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    iget v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionAttempts:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->reportFailed()V

    .line 80
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance p2, Lcom/intermedia/util/logging/events/WebSocketState$Aborted;

    const-string p3, "WebSocketConnectionMgr"

    invoke-direct {p2, p3}, Lcom/intermedia/util/logging/events/WebSocketState$Aborted;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 81
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFailedListener:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;

    invoke-interface {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;->call()V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFuture:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;-><init>(Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/neovisionaries/ws/client/WebSocketAdapter;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    invoke-interface {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFuture:Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method private getDelay()J
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->networkConnectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    .line 97
    invoke-virtual {v0}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionAttempts:I

    mul-int/lit16 v0, v0, 0x5dc

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public connect(Lcom/neovisionaries/ws/client/WebSocketAdapter;)V
    .locals 2
    .param p1    # Lcom/neovisionaries/ws/client/WebSocketAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->getDelay()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connect(Lcom/neovisionaries/ws/client/WebSocketAdapter;J)V

    return-void
.end method

.method public release()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v1, Lcom/intermedia/util/logging/events/WebSocketState$Releasing;

    const-string v2, "WebSocketConnectionMgr"

    invoke-direct {v1, v2}, Lcom/intermedia/util/logging/events/WebSocketState$Releasing;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->isReleasing:Z

    .line 103
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFuture:Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 105
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v2, Lcom/intermedia/util/logging/events/WebSocketState$Canceled;

    const-string v3, "WebSocketConnectionMgr"

    invoke-direct {v2, v3}, Lcom/intermedia/util/logging/events/WebSocketState$Canceled;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 108
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-static {v1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    new-instance v2, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;

    const-string v3, "WebSocketConnectionMgr"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 110
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->clearListeners()Lcom/neovisionaries/ws/client/WebSocket;

    .line 111
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect()Lcom/neovisionaries/ws/client/WebSocket;

    :cond_1
    return-void
.end method

.method public setConnectionFailedListener(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connectionFailedListener:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;

    return-void
.end method
