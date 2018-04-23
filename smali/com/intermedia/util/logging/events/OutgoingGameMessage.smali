.class public abstract Lcom/intermedia/util/logging/events/OutgoingGameMessage;
.super Lcom/intermedia/util/logging/events/LoggableEvent;
.source "OutgoingGameMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;,
        Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;,
        Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;,
        Lcom/intermedia/util/logging/events/OutgoingGameMessage$Subscribe;,
        Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutgoingGameMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingGameMessage.kt\ncom/intermedia/util/logging/events/OutgoingGameMessage\n*L\n1#1,17:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0005\u0006\u0007\u0008\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u0082\u0001\u0005\n\u000b\u000c\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage;",
        "Lcom/intermedia/util/logging/events/LoggableEvent;",
        "()V",
        "toString",
        "",
        "AnswerQuestion",
        "ChatVisibilityToggled",
        "Interaction",
        "Subscribe",
        "UseExtraLife",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$Subscribe;",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;",
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
.method private constructor <init>()V
    .locals 1

    const-string v0, "WebSocketMessageSender"

    .line 3
    invoke-direct {p0, v0}, Lcom/intermedia/util/logging/events/LoggableEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/intermedia/util/logging/events/OutgoingGameMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    instance-of v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Outgoing:AnswerQuestion { answerId: %d, questionId: %d }"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;->getAnswerId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$AnswerQuestion;->getQuestionId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;

    if-eqz v0, :cond_1

    const-string v0, "Outgoing:ChatVisibilityToggled { visible: %b }"

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;->getVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 13
    :cond_1
    instance-of v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;

    if-eqz v0, :cond_2

    const-string v0, "Outgoing:Interaction { message: %s }"

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;->getMessage()Ljava/lang/String;

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

    .line 14
    :cond_2
    instance-of v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Subscribe;

    if-eqz v0, :cond_3

    const-string v0, "Outgoing:Subscribe"

    goto :goto_0

    .line 15
    :cond_3
    instance-of v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;

    if-eqz v0, :cond_4

    const-string v0, "Outgoing:UseExtraLife { questionId: %d }"

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;->getQuestionId()J

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

    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
