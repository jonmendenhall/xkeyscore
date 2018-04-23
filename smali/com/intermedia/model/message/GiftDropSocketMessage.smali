.class public Lcom/intermedia/model/message/GiftDropSocketMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "GiftDropSocketMessage.java"


# instance fields
.field private gift:Lcom/intermedia/model/Gift;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/intermedia/model/message/GiftDropSocketMessage;->gift:Lcom/intermedia/model/Gift;

    invoke-interface {p1, v0}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedGift(Lcom/intermedia/model/Gift;)V

    return-void
.end method
