.class public Lcom/intermedia/model/message/QuestionFinishedMessage;
.super Lcom/intermedia/model/message/SocketMessage;
.source "QuestionFinishedMessage.java"


# instance fields
.field private questionId:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/intermedia/model/message/SocketMessage;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "questionId"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/message/QuestionFinishedMessage;->questionId:J

    return-void
.end method


# virtual methods
.method public call(Lcom/intermedia/network/HypeSocketAPIListener;)V
    .locals 3
    .param p1    # Lcom/intermedia/network/HypeSocketAPIListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lcom/intermedia/model/message/QuestionFinishedMessage;->ts:Ljava/lang/String;

    iget-wide v1, p0, Lcom/intermedia/model/message/QuestionFinishedMessage;->questionId:J

    invoke-interface {p1, v0, v1, v2}, Lcom/intermedia/network/HypeSocketAPIListener;->receivedQuestionFinished(Ljava/lang/String;J)V

    return-void
.end method
