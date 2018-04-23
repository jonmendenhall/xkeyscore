.class public Lcom/intermedia/model/message/GameStatusSocketMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "GameStatusSocketMessage.java"


# instance fields
.field private currentState:Lorg/json/JSONObject;

.field private gameStatus:Lcom/intermedia/model/message/GameStatusMessage;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    .line 18
    iget-object v0, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/intermedia/model/message/GameStatusMessage;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/message/GameStatusMessage;

    iput-object v0, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->gameStatus:Lcom/intermedia/model/message/GameStatusMessage;

    const-string v0, "currentState"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->currentState:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 3
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->ts:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->gameStatus:Lcom/intermedia/model/message/GameStatusMessage;

    iget-object v2, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->currentState:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/intermedia/model/message/GameStatusSocketMessage;->currentState:Lorg/json/JSONObject;

    .line 25
    invoke-static {v2}, Lcom/intermedia/network/SocketMessageFactory;->generate(Lorg/json/JSONObject;)Lcom/intermedia/model/message/SocketMessage;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedGameStatus(Ljava/lang/String;Lcom/intermedia/model/message/GameStatusMessage;Lcom/intermedia/model/message/SocketMessage;)V

    return-void
.end method
