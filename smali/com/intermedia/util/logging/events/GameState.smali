.class public abstract Lcom/intermedia/util/logging/events/GameState;
.super Lcom/intermedia/util/logging/events/LoggableEvent;
.source "GameState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;,
        Lcom/intermedia/util/logging/events/GameState$Closed;,
        Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;,
        Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;,
        Lcom/intermedia/util/logging/events/GameState$HideQuestion;,
        Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;,
        Lcom/intermedia/util/logging/events/GameState$Opened;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameState.kt\ncom/intermedia/util/logging/events/GameState\n*L\n1#1,20:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\u0006\u0007\u0008\t\n\u000b\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u0082\u0001\u0007\r\u000e\u000f\u0010\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/GameState;",
        "Lcom/intermedia/util/logging/events/LoggableEvent;",
        "tag",
        "",
        "(Ljava/lang/String;)V",
        "toString",
        "AnswersDisabled",
        "Closed",
        "DisplayQuestion",
        "DisplayQuestionResult",
        "HideQuestion",
        "HideQuestionResult",
        "Opened",
        "Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;",
        "Lcom/intermedia/util/logging/events/GameState$Closed;",
        "Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;",
        "Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;",
        "Lcom/intermedia/util/logging/events/GameState$HideQuestion;",
        "Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;",
        "Lcom/intermedia/util/logging/events/GameState$Opened;",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/intermedia/util/logging/events/LoggableEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lcom/intermedia/util/logging/events/GameState;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    instance-of v0, p0, Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;

    if-eqz v0, :cond_0

    const-string v0, "GameState:AnswersDisabled"

    goto/16 :goto_0

    .line 14
    :cond_0
    instance-of v0, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "GameState:DisplayQuestion { questionId: %d, questionNumber: %d }"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;->getQuestionId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/GameState$DisplayQuestion;->getQuestionNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15
    :cond_1
    instance-of v0, p0, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;

    if-eqz v0, :cond_2

    const-string v0, "GameState:DisplayQuestionResult { questionId: %d }"

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/GameState$DisplayQuestionResult;->getQuestionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of v0, p0, Lcom/intermedia/util/logging/events/GameState$HideQuestion;

    if-eqz v0, :cond_3

    const-string v0, "GameState:HideQuestion { questionId: %d }"

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/GameState$HideQuestion;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/GameState$HideQuestion;->getQuestionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_3
    instance-of v0, p0, Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;

    if-eqz v0, :cond_4

    const-string v0, "GameState:HideQuestionResult { questionId: %d }"

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/GameState$HideQuestionResult;->getQuestionId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
