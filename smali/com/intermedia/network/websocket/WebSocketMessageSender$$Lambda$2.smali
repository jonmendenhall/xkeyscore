.class final synthetic Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/network/websocket/WebSocketMessageSender;

.field private final arg$2:Lcom/intermedia/model/method/SocketMethod;


# direct methods
.method constructor <init>(Lcom/intermedia/network/websocket/WebSocketMessageSender;Lcom/intermedia/model/method/SocketMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;->arg$1:Lcom/intermedia/network/websocket/WebSocketMessageSender;

    iput-object p2, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;->arg$2:Lcom/intermedia/model/method/SocketMethod;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;->arg$1:Lcom/intermedia/network/websocket/WebSocketMessageSender;

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$2;->arg$2:Lcom/intermedia/model/method/SocketMethod;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/network/websocket/WebSocketMessageSender;->lambda$send$2$WebSocketMessageSender(Lcom/intermedia/model/method/SocketMethod;Ljava/lang/Throwable;)V

    return-void
.end method
