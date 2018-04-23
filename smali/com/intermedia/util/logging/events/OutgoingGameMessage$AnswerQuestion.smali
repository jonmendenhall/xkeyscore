.class public final Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;
.super Lcom/intermedia/util/logging/events/OutgoingGameMessage;
.source "OutgoingGameMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/OutgoingGameMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnswerQuestion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage;",
        "answerId",
        "",
        "questionId",
        "(JJ)V",
        "getAnswerId",
        "()J",
        "getQuestionId",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final answerId:J

.field private final questionId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/intermedia/util/logging/events/OutgoingGameMessage;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;->answerId:J

    iput-wide p3, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;->questionId:J

    return-void
.end method


# virtual methods
.method public final getAnswerId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;->answerId:J

    return-wide v0
.end method

.method public final getQuestionId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;->questionId:J

    return-wide v0
.end method
