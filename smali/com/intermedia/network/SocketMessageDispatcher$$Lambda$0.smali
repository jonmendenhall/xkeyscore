.class final synthetic Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/network/SocketMessageDispatcher;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/network/SocketMessageDispatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;->arg$1:Lcom/intermedia/network/SocketMessageDispatcher;

    iput-object p2, p0, Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;->arg$1:Lcom/intermedia/network/SocketMessageDispatcher;

    iget-object v1, p0, Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/network/SocketMessageDispatcher;->lambda$onMessageReceived$0$SocketMessageDispatcher(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
