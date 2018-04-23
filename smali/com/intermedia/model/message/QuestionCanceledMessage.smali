.class public Lcom/intermedia/model/message/QuestionCanceledMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "QuestionCanceledMessage.java"


# instance fields
.field public final questionId:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "questionId"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/message/QuestionCanceledMessage;->questionId:J

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 3
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/message/QuestionCanceledMessage;->ts:Ljava/lang/String;

    iget-wide v1, p0, Lcom/intermedia/model/message/QuestionCanceledMessage;->questionId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedQuestionCanceled(Ljava/lang/String;J)V

    return-void
.end method
