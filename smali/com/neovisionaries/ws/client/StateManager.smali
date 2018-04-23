.class Lcom/neovisionaries/ws/client/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;
    }
.end annotation


# instance fields
.field private mCloseInitiator:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

.field private mState:Lcom/neovisionaries/ws/client/WebSocketState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/StateManager;->mCloseInitiator:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    .line 39
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CREATED:Lcom/neovisionaries/ws/client/WebSocketState;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/StateManager;->mState:Lcom/neovisionaries/ws/client/WebSocketState;

    return-void
.end method


# virtual methods
.method public changeToClosing(Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketState;->CLOSING:Lcom/neovisionaries/ws/client/WebSocketState;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/StateManager;->mState:Lcom/neovisionaries/ws/client/WebSocketState;

    .line 60
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StateManager;->mCloseInitiator:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->NONE:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    if-ne v0, v1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/neovisionaries/ws/client/StateManager;->mCloseInitiator:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    :cond_0
    return-void
.end method

.method public getClosedByServer()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StateManager;->mCloseInitiator:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    sget-object v1, Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;->SERVER:Lcom/neovisionaries/ws/client/StateManager$CloseInitiator;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getState()Lcom/neovisionaries/ws/client/WebSocketState;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StateManager;->mState:Lcom/neovisionaries/ws/client/WebSocketState;

    return-object v0
.end method

.method public setState(Lcom/neovisionaries/ws/client/WebSocketState;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/neovisionaries/ws/client/StateManager;->mState:Lcom/neovisionaries/ws/client/WebSocketState;

    return-void
.end method
