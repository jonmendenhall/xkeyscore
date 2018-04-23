.class public final Lcom/intermedia/model/message/ExtraLifeSocketMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "ExtraLifeSocketMessage.java"


# instance fields
.field private extraLifeCount:J

.field private extraLivesRemaining:J

.field private referredAvatar:Ljava/lang/String;

.field private referredUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "count"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->extraLifeCount:J

    const-string v0, "extraLivesRemaining"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->extraLivesRemaining:J

    const-string v0, "referredUsername"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->referredUsername:Ljava/lang/String;

    const-string v0, "referredAvatarUrl"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->referredAvatar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 7
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    iget-wide v1, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->extraLifeCount:J

    iget-wide v3, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->extraLivesRemaining:J

    iget-object v5, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->referredUsername:Ljava/lang/String;

    iget-object v6, p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;->referredAvatar:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedExtraLives(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
