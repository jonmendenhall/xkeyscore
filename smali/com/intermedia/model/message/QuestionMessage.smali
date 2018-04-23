.class public Lcom/intermedia/model/message/QuestionMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "QuestionMessage.java"


# instance fields
.field public final question:Lcom/intermedia/model/Question;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    .line 20
    new-instance v0, Lcom/intermedia/model/Question;

    invoke-direct {v0, p1}, Lcom/intermedia/model/Question;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/intermedia/model/message/QuestionMessage;->question:Lcom/intermedia/model/Question;

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 2
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/intermedia/model/message/QuestionMessage;->ts:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/model/message/QuestionMessage;->question:Lcom/intermedia/model/Question;

    invoke-interface {p1, v0, v1}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedQuestion(Ljava/lang/String;Lcom/intermedia/model/Question;)V

    return-void
.end method
