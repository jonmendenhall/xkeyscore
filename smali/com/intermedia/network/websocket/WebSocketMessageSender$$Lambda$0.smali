.class final synthetic Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/model/method/SocketMethod;


# direct methods
.method constructor <init>(Lcom/intermedia/model/method/SocketMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$0;->arg$1:Lcom/intermedia/model/method/SocketMethod;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketMessageSender$$Lambda$0;->arg$1:Lcom/intermedia/model/method/SocketMethod;

    invoke-static {v0, p1}, Lcom/intermedia/network/websocket/WebSocketMessageSender;->lambda$send$0$WebSocketMessageSender(Lcom/intermedia/model/method/SocketMethod;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
