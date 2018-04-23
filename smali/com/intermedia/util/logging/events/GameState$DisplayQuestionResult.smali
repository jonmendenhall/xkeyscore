.class public final Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;
.super Lcom/intermedia/util/logging/events/GameState;
.source "GameState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/GameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayQuestionResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;",
        "Lcom/intermedia/util/logging/events/GameState;",
        "tag",
        "",
        "questionId",
        "",
        "(Ljava/lang/String;J)V",
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
.field private final questionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/intermedia/util/logging/events/GameState;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p2, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;->questionId:J

    return-void
.end method


# virtual methods
.method public final getQuestionId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;->questionId:J

    return-wide v0
.end method
