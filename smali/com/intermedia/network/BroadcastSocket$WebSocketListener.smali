.class Lcom/intermedia/network/BroadcastSocket$WebSocketListener;
.super Lcom/neovisionaries/ws/client/WebSocketAdapter;
.source "BroadcastSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/network/BroadcastSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/network/BroadcastSocket;


# direct methods
.method private constructor <init>(Lcom/intermedia/network/BroadcastSocket;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-direct {p0}, Lcom/neovisionaries/ws/client/WebSocketAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/network/BroadcastSocket;Lcom/intermedia/network/BroadcastSocket$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;-><init>(Lcom/intermedia/network/BroadcastSocket;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onTextMessage$0$BroadcastSocket$WebSocketListener(Ljava/lang/String;Lcom/intermedia/model/message/SocketMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    instance-of v0, p2, Lcom/intermedia/model/message/InteractionMessage;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/intermedia/network/BroadcastSocket;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {p1}, Lcom/intermedia/network/BroadcastSocket;->access$400(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/network/BroadcastSocketListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/intermedia/network/BroadcastSocketListener;->onMessageReceived(Lcom/intermedia/model/message/SocketMessage;)V

    return-void
.end method

.method final synthetic lambda$onTextMessage$1$BroadcastSocket$WebSocketListener(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v0}, Lcom/intermedia/network/BroadcastSocket;->access$300(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/logging/events/WebSocketState$Exception;

    invoke-static {}, Lcom/intermedia/network/BroadcastSocket;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deserialization failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/intermedia/util/logging/events/WebSocketState$Exception;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 89
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v0}, Lcom/intermedia/network/BroadcastSocket;->access$900(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v2}, Lcom/intermedia/network/BroadcastSocket;->access$800(Lcom/intermedia/network/BroadcastSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p2

    const-string v1, "message"

    .line 90
    invoke-virtual {p2, v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public onConnected(Lcom/neovisionaries/ws/client/WebSocket;Ljava/util/Map;)V
    .locals 3
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

    .line 72
    iget-object p2, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    new-instance v0, Lcom/intermedia/network/websocket/WebSocketMessageSender;

    iget-object v1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v1}, Lcom/intermedia/network/BroadcastSocket;->access$200(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v1

    iget-object v2, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    .line 73
    invoke-static {v2}, Lcom/intermedia/network/BroadcastSocket;->access$300(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/intermedia/network/websocket/WebSocketMessageSender;-><init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/util/logging/DebugReporter;)V

    .line 72
    invoke-static {p2, v0}, Lcom/intermedia/network/BroadcastSocket;->access$102(Lcom/intermedia/network/BroadcastSocket;Lcom/intermedia/network/websocket/WebSocketMessageSender;)Lcom/intermedia/network/websocket/WebSocketMessageSender;

    .line 74
    iget-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {p1}, Lcom/intermedia/network/BroadcastSocket;->access$200(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/av/media/SocketSessionReporter;->socketConnected()V

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p2, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {p2}, Lcom/intermedia/network/BroadcastSocket;->access$400(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/network/BroadcastSocketListener;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$0;->get$Lambda(Lcom/intermedia/network/BroadcastSocketListener;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/neovisionaries/ws/client/WebSocketException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v0}, Lcom/intermedia/network/BroadcastSocket;->access$600(Lcom/intermedia/network/BroadcastSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {v0}, Lcom/intermedia/network/BroadcastSocket;->access$200(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/intermedia/av/media/SocketSessionReporter;->reportSocketError(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onTextMessage(Lcom/neovisionaries/ws/client/WebSocket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {p1}, Lcom/intermedia/network/BroadcastSocket;->access$200(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/av/media/SocketSessionReporter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/intermedia/av/media/SocketSessionReporter;->messageReceived(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener;->this$0:Lcom/intermedia/network/BroadcastSocket;

    invoke-static {p1}, Lcom/intermedia/network/BroadcastSocket;->access$500(Lcom/intermedia/network/BroadcastSocket;)Lcom/intermedia/network/SocketMessageDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/intermedia/network/SocketMessageDispatcher;->onMessageReceived(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$1;

    invoke-direct {v0, p0, p2}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$1;-><init>(Lcom/intermedia/network/BroadcastSocket$WebSocketListener;Ljava/lang/String;)V

    new-instance v1, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;

    invoke-direct {v1, p0, p2}, Lcom/intermedia/network/BroadcastSocket$WebSocketListener$$Lambda$2;-><init>(Lcom/intermedia/network/BroadcastSocket$WebSocketListener;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
