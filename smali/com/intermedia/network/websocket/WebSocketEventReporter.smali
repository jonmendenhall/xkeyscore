.class abstract Lcom/intermedia/network/websocket/WebSocketEventReporter;
.super Ljava/lang/Object;
.source "WebSocketEventReporter.java"


# static fields
.field private static final sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    sput-object v0, Lcom/intermedia/network/websocket/WebSocketEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNetworkInfoParam()Landroid/util/Pair;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "networkInfo"

    .line 44
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/intermedia/ApplicationComponent;->getNetworkConnectivityManager()Lcom/intermedia/network/NetworkConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/network/NetworkConnectivityManager;->getNetworkInfo()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static reportConnected()V
    .locals 5

    .line 16
    sget-object v0, Lcom/intermedia/network/websocket/WebSocketEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "socket_connected"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const-string v3, "gameKey"

    .line 18
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v4

    invoke-interface {v4}, Lcom/intermedia/ApplicationComponent;->getShowTimeRepository()Lcom/intermedia/game/ShowTimeRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/intermedia/game/ShowTimeRepository;->getGameKey()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 19
    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method static reportDisonnected()V
    .locals 2

    .line 23
    sget-object v0, Lcom/intermedia/network/websocket/WebSocketEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "socket_disconnected"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static reportFailed()V
    .locals 5

    .line 38
    sget-object v0, Lcom/intermedia/network/websocket/WebSocketEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "socket_failed"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method static reportReconnected()V
    .locals 2

    .line 33
    sget-object v0, Lcom/intermedia/network/websocket/WebSocketEventReporter;->sReporter:Lcom/intermedia/util/analytics/ClientEventReporter;

    const-string v1, "socket_reconnected"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static reportSocketMethodFailed(Lcom/intermedia/model/method/SocketMethod;)V
    .locals 5
    .param p0    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "socket_methodFailed"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "type"

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    .line 29
    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->getNetworkInfoParam()Landroid/util/Pair;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method
