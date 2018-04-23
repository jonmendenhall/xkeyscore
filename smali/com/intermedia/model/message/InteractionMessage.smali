.class public Lcom/intermedia/model/message/InteractionMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "InteractionMessage.java"


# instance fields
.field private interaction:Lcom/intermedia/av/media/HPMediaItemInteraction;


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
    new-instance v0, Lcom/intermedia/av/media/HPMediaItemInteraction;

    iget-object v1, p0, Lcom/intermedia/model/message/InteractionMessage;->GSON:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, p1}, Lcom/intermedia/av/media/HPMediaItemInteraction;-><init>(Lcom/google/gson/Gson;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/intermedia/model/message/InteractionMessage;->interaction:Lcom/intermedia/av/media/HPMediaItemInteraction;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/intermedia/model/message/InteractionMessage;->interaction:Lcom/intermedia/av/media/HPMediaItemInteraction;

    invoke-interface {p1, v0}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedInteraction(Lcom/intermedia/av/media/HPMediaItemInteraction;)V

    return-void
.end method
