.class synthetic Lcom/neovisionaries/ws/client/WebSocket$1;
.super Ljava/lang/Object;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$neovisionaries$ws$client$WebSocketState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2423
    invoke-static {}, Lcom/neovisionaries/ws/client/WebSocketState;->values()[Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/neovisionaries/ws/client/WebSocket$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketState:[I

    :try_start_0
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocket$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketState:[I

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocket$1;->$SwitchMap$com$neovisionaries$ws$client$WebSocketState:[I

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->OPEN:Lcom/neovisionaries/ws/client/WebSocketState;

    invoke-virtual {v1}, Lcom/neovisionaries/ws/client/WebSocketState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
