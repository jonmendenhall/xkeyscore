.class Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;
.super Lcom/neovisionaries/ws/client/WebSocketAdapter;
.source "WebSocketConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;


# direct methods
.method constructor <init>(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocketAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/neovisionaries/ws/client/WebSocket;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neovisionaries/ws/client/WebSocket;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p2, p2, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p2}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p2, p2, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p2}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p2

    new-instance v0, Lcom/intermedia/util/logging/events/WebSocketState$Connected;

    const-string v1, "WebSocketConnectionMgr"

    invoke-direct {v0, v1}, Lcom/intermedia/util/logging/events/WebSocketState$Connected;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 129
    iget-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p2, p2, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p2}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$200(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object p2

    .line 130
    invoke-static {p2}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p2}, Lcom/neovisionaries/ws/client/WebSocket;->clearListeners()Lcom/neovisionaries/ws/client/WebSocket;

    .line 132
    invoke-virtual {p2}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect()Lcom/neovisionaries/ws/client/WebSocket;

    :cond_1
    const-wide/16 v0, 0x1388

    .line 135
    invoke-virtual {p1, v0, v1}, Lcom/neovisionaries/ws/client/WebSocket;->setPingInterval(J)Lcom/neovisionaries/ws/client/WebSocket;

    .line 136
    iget-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p2, p2, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p2, p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$202(Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/neovisionaries/ws/client/WebSocket;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 138
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p1, p1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$300(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    .line 139
    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->reportReconnected()V

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->reportConnected()V

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p1, p1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$302(Lcom/intermedia/network/websocket/WebSocketConnectionManager;I)I

    return-void

    .line 123
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocket;->clearListeners()Lcom/neovisionaries/ws/client/WebSocket;

    .line 124
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocket;->disconnect()Lcom/neovisionaries/ws/client/WebSocket;

    return-void
.end method

.method public onDisconnected(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketFrame;Lcom/neovisionaries/ws/client/WebSocketFrame;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p1, p1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$100(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object p1

    new-instance p2, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;

    const-string p3, "WebSocketConnectionMgr"

    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object v0, v0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    .line 151
    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Z

    move-result v0

    invoke-direct {p2, p3, p4, v0}, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;-><init>(Ljava/lang/String;ZZ)V

    .line 150
    invoke-virtual {p1, p2}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 152
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p1, p1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    .line 153
    invoke-static {}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->reportDisonnected()V

    .line 154
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->access$400(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    iget-object p1, p1, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable$1;->this$1:Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;

    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;->access$400(Lcom/intermedia/network/websocket/WebSocketConnectionManager$ConnectionRunnable;)V

    :cond_0
    return-void
.end method
