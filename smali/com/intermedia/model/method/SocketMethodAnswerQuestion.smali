.class public Lcom/intermedia/model/method/SocketMethodAnswerQuestion;
.super Lcom/intermedia/model/method/SocketMethod;
.source "SocketMethodAnswerQuestion.java"


# instance fields
.field public final answerId:J

.field public final questionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "answer"

    .line 13
    new-instance v5, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;

    invoke-direct {v5, p4, p5, p6, p7}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;-><init>(JJ)V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethod;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/intermedia/util/logging/events/OutgoingGameMessage;)V

    .line 15
    iput-wide p4, p0, Lcom/intermedia/model/method/SocketMethodAnswerQuestion;->answerId:J

    .line 16
    iput-wide p6, p0, Lcom/intermedia/model/method/SocketMethodAnswerQuestion;->questionId:J

    return-void
.end method
