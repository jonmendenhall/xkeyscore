.class public Lcom/intermedia/network/websocket/WebSocketMessageSender;
.super Ljava/lang/Object;
.source "WebSocketMessageSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketMessageSender"


# instance fields
.field private final debugReporter:Lcom/intermedia/util/logging/DebugReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final webSocket:Lcom/neovisionaries/ws/client/WebSocket;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/util/logging/DebugReporter;)V
    .locals 0
    .param p1    # Lcom/neovisionaries/ws/client/WebSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/av/media/SocketSessionReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/util/logging/DebugReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 28
    iput-object p2, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    .line 29
    iput-object p3, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    return-void
.end method

.method static final synthetic lambda$send$0$WebSocketMessageSender(Lcom/intermedia/model/method/SocketMethod;Lio/reactivex/SingleEmitter;)V
    .locals 1
    .param p0    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/intermedia/model/method/SocketMethod;->getMessageString()Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "Failed to deserialize socket message"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method final synthetic lambda$send$1$WebSocketMessageSender(Lcom/intermedia/model/method/SocketMethod;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebSocketMessageSender"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending socket data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0, p2}, Lcom/neovisionaries/ws/client/WebSocket;->sendText(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocket;

    .line 45
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    invoke-virtual {v0, p2}, Lcom/intermedia/av/media/SocketSessionReporter;->messageSent(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->debugReporter:Lcom/intermedia/util/logging/DebugReporter;

    iget-object p1, p1, Lcom/intermedia/model/method/SocketMethod;->outgoingGameMessage:Lcom/intermedia/util/logging/events/OutgoingGameMessage;

    invoke-virtual {p2, p1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    .line 50
    invoke-virtual {v0, v1, p1, p2}, Lcom/intermedia/av/media/SocketSessionReporter;->reportSendWhenSocketClosed(Lcom/neovisionaries/ws/client/WebSocket;Lcom/intermedia/model/method/SocketMethod;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$send$2$WebSocketMessageSender(Lcom/intermedia/model/method/SocketMethod;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lcom/intermedia/network/websocket/WebSocketEventReporter;->reportSocketMethodFailed(Lcom/intermedia/model/method/SocketMethod;)V

    .line 55
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->socketSessionReporter:Lcom/intermedia/av/media/SocketSessionReporter;

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender;->webSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0, v1, p1, p2}, Lcom/intermedia/av/media/SocketSessionReporter;->reportSendError(Lcom/neovisionaries/ws/client/WebSocket;Lcom/intermedia/model/method/SocketMethod;Ljava/lang/Throwable;)V

    return-void
.end method

.method public send(Lcom/intermedia/model/method/SocketMethod;)V
    .locals 3
    .param p1    # Lcom/intermedia/model/method/SocketMethod;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    new-instance v0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$0;

    invoke-direct {v0, p1}, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$0;-><init>(Lcom/intermedia/model/method/SocketMethod;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    .line 40
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$1;-><init>(Lcom/intermedia/network/websocket/WebSocketMessageSender;Lcom/intermedia/model/method/SocketMethod;)V

    new-instance v2, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;

    invoke-direct {v2, p0, p1}, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;-><init>(Lcom/intermedia/network/websocket/WebSocketMessageSender;Lcom/intermedia/model/method/SocketMethod;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
