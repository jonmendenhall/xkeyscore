.class abstract Lcom/neovisionaries/ws/client/PerMessageCompressionExtension;
.super Lcom/neovisionaries/ws/client/WebSocketExtension;
.source "PerMessageCompressionExtension.java"


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketExtension;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;-><init>(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract compress([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation
.end method

.method protected abstract decompress([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation
.end method
