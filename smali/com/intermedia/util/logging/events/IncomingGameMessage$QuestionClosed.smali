.class public final Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;
.super Lcom/intermedia/util/logging/events/IncomingGameMessage;
.source "IncomingGameMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/IncomingGameMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuestionClosed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;",
        "Lcom/intermedia/util/logging/events/IncomingGameMessage;",
        "tag",
        "",
        "messageTs",
        "questionId",
        "",
        "(Ljava/lang/String;Ljava/lang/String;J)V",
        "getMessageTs",
        "()Ljava/lang/String;",
        "getQuestionId",
        "()J",
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
.field private final messageTs:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final questionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageTs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/intermedia/util/logging/events/IncomingGameMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;->messageTs:Ljava/lang/String;

    iput-wide p3, p0, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;->questionId:J

    return-void
.end method


# virtual methods
.method public final getMessageTs()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;->messageTs:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuestionId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/intermedia/util/logging/events/IncomingGameMessage$QuestionClosed;->questionId:J

    return-wide v0
.end method
