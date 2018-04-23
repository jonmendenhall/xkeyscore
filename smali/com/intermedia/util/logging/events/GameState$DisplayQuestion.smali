.class public final Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;
.super Lcom/intermedia/util/logging/events/GameState;
.source "GameState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/GameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayQuestion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;",
        "Lcom/intermedia/util/logging/events/GameState;",
        "tag",
        "",
        "questionId",
        "",
        "questionNumber",
        "",
        "(Ljava/lang/String;JI)V",
        "getQuestionId",
        "()J",
        "getQuestionNumber",
        "()I",
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
.field private final questionId:J

.field private final questionNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/intermedia/util/logging/events/GameState;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p2, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;->questionId:J

    iput p4, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;->questionNumber:I

    return-void
.end method


# virtual methods
.method public final getQuestionId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;->questionId:J

    return-wide v0
.end method

.method public final getQuestionNumber()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;->questionNumber:I

    return v0
.end method
