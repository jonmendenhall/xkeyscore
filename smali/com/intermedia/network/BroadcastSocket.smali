.class public Lcom/intermedia/network/BroadcastSocket;
.super Ljava/lang/Object;
.source "BroadcastSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/network/BroadcastSocket$BroadcastSocketException;,
        Lcom/intermedia/network/BroadcastSocket$WebSocketListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastSocket"


# instance fields
.field private final broadcastSocketListener:Lcom/intermedia/network/BroadcastSocketListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final errorReporter:Lcom/intermedia/util/reporting/ErrorReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private isLeavingBroadcast:Z

.field private messageSender:Lcom/intermedia/network/websocket/WebSocketMessageSender;

.field private final socketMessageDispatcher:Lcom/intermedia/network/SocketMessageDispatcher;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final webSocketConnectionManager:Lcom/intermedia/network/websocket/WebSocketConnectionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/intermedia/network/BroadcastSocketListener;Lcom/intermedia/network/SocketMessageDispatcher;Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/intermedia/util/logging/DebugReporter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/network/BroadcastSocketListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/network/SocketMessageDispatcher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/av/media/SocketSessionReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/network/websocket/WebSocketConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket;->username:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/intermedia/network/BroadcastSocket;->broadcastSocketListener:Lcom/intermedia/network/BroadcastSocketListener;

    .line 52
    iput-object p4, p0, Lcom/intermedia/network/BroadcastSocket;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    .line 53
    iput-object p3, p0, Lcom/intermedia/network/BroadcastSocket;->socketMessageDispatcher:Lcom/intermedia/network/SocketMessageDispatcher;

    .line 54
    iput-object p5, p0, Lcom/intermedia/network/BroadcastSocket;->webSocketConnectionManager:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    .line 55
    iput-object p6, p0, Lcom/intermedia/network/BroadcastSocket;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    .line 56
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket;->errorReporter:Lcom/intermedia/util/reporting/ErrorReporter;

    return-void
.end method

.method static synthetic access$102(Lcom/intermedia/network/BroadcastSocket;Lcom/intermedia/network/websocket/WebSocketMessageSender;)Lcom/intermedia/network/websocket/WebSocketMessageSender;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket;->messageSender:Lcom/intermedia/network/websocket/WebSocketMessageSender;

    return-object p1
.end method

.method static synthetic access$200(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/av/media/SocketSessionReporter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/intermedia/network/BroadcastSocket;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/util/logging/DebugReporter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/intermedia/network/BroadcastSocket;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/network/BroadcastSocketListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/intermedia/network/BroadcastSocket;->broadcastSocketListener:Lcom/intermedia/network/BroadcastSocketListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/network/SocketMessageDispatcher;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/intermedia/network/BroadcastSocket;->socketMessageDispatcher:Lcom/intermedia/network/SocketMessageDispatcher;

    return-object p0
.end method

.method static synthetic access$600(Lcom/intermedia/network/BroadcastSocket;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/intermedia/network/BroadcastSocket;->isLeavingBroadcast:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/intermedia/network/BroadcastSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/intermedia/network/BroadcastSocket;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/intermedia/network/BroadcastSocket;->username:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/util/reporting/ErrorReporter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/intermedia/network/BroadcastSocket;->errorReporter:Lcom/intermedia/util/reporting/ErrorReporter;

    return-object p0
.end method


# virtual methods
.method public connect()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->webSocketConnectionManager:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    new-instance v1, Lcom/intermedia/network/BroadcastSocket$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/network/BroadcastSocket$$Lambda$0;-><init>(Lcom/intermedia/network/BroadcastSocket;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->setConnectionFailedListener(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionFailedListener;)V

    .line 65
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->webSocketConnectionManager:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    new-instance v1, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;-><init>(Lcom/intermedia/network/BroadcastSocket;Lcom/intermedia/network/BroadcastSocket$1;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connect(Lcom/neovisionaries/ws/client/WebSocketAdapter;)V

    return-void
.end method

.method final synthetic lambda$connect$0$BroadcastSocket()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->errorReporter:Lcom/intermedia/util/reporting/ErrorReporter;

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/network/BroadcastSocket;->username:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/network/BroadcastSocket$BroadcastSocketException;

    const-string v3, "Socket failed to reconnect after 7 attempts"

    invoke-direct {v2, p0, v3}, Lcom/intermedia/network/BroadcastSocket$BroadcastSocketException;-><init>(Lcom/intermedia/network/BroadcastSocket;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 63
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->broadcastSocketListener:Lcom/intermedia/network/BroadcastSocketListener;

    invoke-interface {v0}, Lcom/intermedia/network/BroadcastSocketListener;->onSocketConnectionFailed()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/intermedia/network/BroadcastSocket;->isLeavingBroadcast:Z

    .line 110
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->webSocketConnectionManager:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-virtual {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->release()V

    .line 111
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    invoke-virtual {v0}, Lcom/intermedia/av/media/SocketSessionReporter;->reportSessionEnded()V

    return-void
.end method

.method public send(Lcom/intermedia/model/method/SocketMethod;)V
    .locals 1
    .param p1    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->messageSender:Lcom/intermedia/network/websocket/WebSocketMessageSender;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket;->messageSender:Lcom/intermedia/network/websocket/WebSocketMessageSender;

    invoke-virtual {v0, p1}, Lcom/intermedia/network/websocket/WebSocketMessageSender;->send(Lcom/intermedia/model/method/SocketMethod;)V

    :cond_0
    return-void
.end method
