.class public Lcom/intermedia/model/message/PostGameMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "PostGameMessage.java"


# instance fields
.field private showId:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "showId"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/message/PostGameMessage;->showId:J

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/intermedia/model/message/PostGameMessage;->ts:Ljava/lang/String;

    iget-wide v1, p0, Lcom/intermedia/model/message/PostGameMessage;->showId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedPostGame(Ljava/lang/String;J)V

    return-void
.end method
