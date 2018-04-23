.class public Lcom/intermedia/model/message/BroadcastFullMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "BroadcastFullMessage.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 1
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/message/BroadcastFullMessage;->ts:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/intermedia/network/HypeSocketAPIListener;->broadcastFull(Ljava/lang/String;)V

    return-void
.end method
