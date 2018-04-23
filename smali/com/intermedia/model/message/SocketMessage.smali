.class public abstract Lcom/intermedia/model/message/SocketMessage;
.super Ljava/lang/Object;
.source "SocketMessage.java"


# instance fields
.field GSON:Lcom/google/gson/Gson;

.field final ts:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/message/SocketMessage;->GSON:Lcom/google/gson/Gson;

    const-string v0, "ts"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/intermedia/model/message/SocketMessage;->ts:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
