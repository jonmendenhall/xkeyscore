.class Lcom/neovisionaries/ws/client/Connectable;
.super Ljava/lang/Object;
.source "Connectable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/neovisionaries/ws/client/WebSocket;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocket;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/neovisionaries/ws/client/Connectable;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    return-void
.end method


# virtual methods
.method public call()Lcom/neovisionaries/ws/client/WebSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Connectable;->mWebSocket:Lcom/neovisionaries/ws/client/WebSocket;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/WebSocket;->connect()Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/neovisionaries/ws/client/Connectable;->call()Lcom/neovisionaries/ws/client/WebSocket;

    move-result-object v0

    return-object v0
.end method
