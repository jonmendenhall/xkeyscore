.class public Lcom/intermedia/model/message/BroadcastEndedMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "BroadcastEndedMessage.java"


# instance fields
.field private final kicked:Z

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "subtype"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kick"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intermedia/model/message/BroadcastEndedMessage;->kicked:Z

    const-string v0, "reason"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/model/message/BroadcastEndedMessage;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/message/BroadcastEndedMessage;->ts:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/model/message/BroadcastEndedMessage;->reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/intermedia/model/message/BroadcastEndedMessage;->kicked:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/intermedia/network/HypeSocketAPIListener;->broadcastEnded(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
