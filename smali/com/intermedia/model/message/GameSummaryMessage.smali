.class public Lcom/intermedia/model/message/GameSummaryMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "GameSummaryMessage.java"


# instance fields
.field private gameResult:Lcom/intermedia/model/HQGameResult;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    .line 14
    iget-object v0, p0, Lcom/intermedia/model/message/GameSummaryMessage;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/intermedia/model/HQGameResult;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/HQGameResult;

    iput-object p1, p0, Lcom/intermedia/model/message/GameSummaryMessage;->gameResult:Lcom/intermedia/model/HQGameResult;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/intermedia/model/message/GameSummaryMessage;->ts:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/model/message/GameSummaryMessage;->gameResult:Lcom/intermedia/model/HQGameResult;

    invoke-interface {p1, v0, v1}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedGameResult(Ljava/lang/String;Lcom/intermedia/model/HQGameResult;)V

    return-void
.end method
