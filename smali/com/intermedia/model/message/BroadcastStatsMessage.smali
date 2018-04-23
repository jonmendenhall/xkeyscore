.class public Lcom/intermedia/model/message/BroadcastStatsMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "BroadcastStatsMessage.java"


# instance fields
.field private broadcastStats:Lcom/intermedia/model/BroadcastStats;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    .line 18
    iget-object v0, p0, Lcom/intermedia/model/message/BroadcastStatsMessage;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/intermedia/model/BroadcastStats;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/BroadcastStats;

    iput-object p1, p0, Lcom/intermedia/model/message/BroadcastStatsMessage;->broadcastStats:Lcom/intermedia/model/BroadcastStats;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/intermedia/model/message/BroadcastStatsMessage;->ts:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/model/message/BroadcastStatsMessage;->broadcastStats:Lcom/intermedia/model/BroadcastStats;

    invoke-interface {p1, v0, v1}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedBroadcastStats(Ljava/lang/String;Lcom/intermedia/model/BroadcastStats;)V

    return-void
.end method
