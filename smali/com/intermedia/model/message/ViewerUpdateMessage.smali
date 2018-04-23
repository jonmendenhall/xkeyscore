.class public Lcom/intermedia/model/message/ViewerUpdateMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "ViewerUpdateMessage.java"


# instance fields
.field public final user:Lcom/intermedia/model/ViewerUpdateUser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final viewerState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    .line 18
    invoke-static {}, Lcom/intermedia/model/ViewerUpdateUser;->builder()Lcom/intermedia/model/ViewerUpdateUser$Builder;

    move-result-object v0

    const-string v1, "avatarUrl"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/intermedia/model/ViewerUpdateUser$Builder;->avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 20
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/model/ViewerUpdateUser$Builder;->userId(J)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    move-result-object v0

    const-string v1, "username"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/intermedia/model/ViewerUpdateUser$Builder;->username(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/intermedia/model/ViewerUpdateUser$Builder;->build()Lcom/intermedia/model/ViewerUpdateUser;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/message/ViewerUpdateMessage;->user:Lcom/intermedia/model/ViewerUpdateUser;

    const-string v0, "playing"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/intermedia/model/message/ViewerUpdateMessage;->viewerState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-interface {p1, p0}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedViewerUpdate(Lcom/intermedia/model/message/ViewerUpdateMessage;)V

    return-void
.end method
