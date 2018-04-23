.class Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;
.super Ljava/lang/Object;
.source "WebSocketConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/network/websocket/WebSocketConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconnectionRunnable"
.end annotation


# instance fields
.field private final listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;


# direct methods
.method constructor <init>(Lcom/intermedia/network/websocket/WebSocketConnectionManager;Lcom/neovisionaries/ws/client/WebSocketAdapter;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/websocket/WebSocketConnectionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    iput-object p1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;->listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->access$1000(Lcom/intermedia/network/websocket/WebSocketConnectionManager;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "websocket_reconnecting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 221
    iget-object v0, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;->this$0:Lcom/intermedia/network/websocket/WebSocketConnectionManager;

    iget-object v1, p0, Lcom/intermedia/network/websocket/WebSocketConnectionManager$ReconnectionRunnable;->listener:Lcom/neovisionaries/ws/client/WebSocketAdapter;

    invoke-virtual {v0, v1}, Lcom/intermedia/network/websocket/WebSocketConnectionManager;->connect(Lcom/neovisionaries/ws/client/WebSocketAdapter;)V

    return-void
.end method
