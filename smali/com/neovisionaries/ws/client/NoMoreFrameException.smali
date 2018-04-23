.class Lcom/neovisionaries/ws/client/NoMoreFrameException;
.super Lcom/neovisionaries/ws/client/WebSocketException;
.source "NoMoreFrameException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->NO_MORE_FRAME:Lcom/neovisionaries/ws/client/WebSocketError;

    const-string v1, "No more WebSocket frame from the server."

    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    return-void
.end method
