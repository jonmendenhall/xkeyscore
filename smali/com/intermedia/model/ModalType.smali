.class public abstract Lcom/intermedia/model/ModalType;
.super Ljava/lang/Object;
.source "ModalType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/ModalType$Eliminated;,
        Lcom/intermedia/model/ModalType$Late;,
        Lcom/intermedia/model/ModalType$Thanks;,
        Lcom/intermedia/model/ModalType$WelcomeBack;,
        Lcom/intermedia/model/ModalType$Winner;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u000e\u000f\u0010\u0011\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JX\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\t2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00040\u0006\u0082\u0001\u0005\u0013\u0014\u0015\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/intermedia/model/ModalType;",
        "",
        "()V",
        "value",
        "",
        "ifEliminated",
        "Lkotlin/Function1;",
        "Lcom/intermedia/model/HQQuestionResult;",
        "ifLate",
        "Lkotlin/Function0;",
        "ifThanks",
        "ifWelcomeBack",
        "ifWinner",
        "",
        "Eliminated",
        "Late",
        "Thanks",
        "WelcomeBack",
        "Winner",
        "Lcom/intermedia/model/ModalType$Eliminated;",
        "Lcom/intermedia/model/ModalType$Late;",
        "Lcom/intermedia/model/ModalType$Thanks;",
        "Lcom/intermedia/model/ModalType$WelcomeBack;",
        "Lcom/intermedia/model/ModalType$Winner;",
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
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/intermedia/model/ModalType;-><init>()V

    return-void
.end method


# virtual methods
.method public final value(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/intermedia/model/HQQuestionResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ifEliminated"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifLate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifThanks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifWelcomeBack"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifWinner"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v0, p0, Lcom/intermedia/model/ModalType$Eliminated;

    if-eqz v0, :cond_0

    move-object p2, p0

    check-cast p2, Lcom/intermedia/model/ModalType$Eliminated;

    invoke-virtual {p2}, Lcom/intermedia/model/ModalType$Eliminated;->getQuestionResult()Lcom/intermedia/model/HQQuestionResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    instance-of p1, p0, Lcom/intermedia/model/ModalType$Late;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    instance-of p1, p0, Lcom/intermedia/model/ModalType$Thanks;

    if-eqz p1, :cond_2

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_2
    instance-of p1, p0, Lcom/intermedia/model/ModalType$WelcomeBack;

    if-eqz p1, :cond_3

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_3
    instance-of p1, p0, Lcom/intermedia/model/ModalType$Winner;

    if-eqz p1, :cond_4

    move-object p1, p0

    check-cast p1, Lcom/intermedia/model/ModalType$Winner;

    invoke-virtual {p1}, Lcom/intermedia/model/ModalType$Winner;->getModalBody()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
