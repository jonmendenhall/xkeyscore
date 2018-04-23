.class public abstract Lcom/intermedia/libs/Either;
.super Ljava/lang/Object;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/libs/Either$Left;,
        Lcom/intermedia/libs/Either$Right;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u00020\u0003:\u0002\u0011\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J9\u0010\u0005\u001a\u0002H\u0006\"\u0004\u0008\u0002\u0010\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u00060\u00082\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u00060\u0008\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\r\u0010\u000e\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u000fJ\r\u0010\u0010\u001a\u0004\u0018\u00018\u0001\u00a2\u0006\u0002\u0010\u000f\u0082\u0001\u0002\u0013\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/intermedia/libs/Either;",
        "A",
        "B",
        "",
        "()V",
        "either",
        "C",
        "ifLeft",
        "Lkotlin/Function1;",
        "ifRight",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "isLeft",
        "",
        "isRight",
        "left",
        "()Ljava/lang/Object;",
        "right",
        "Left",
        "Right",
        "Lcom/intermedia/libs/Either$Left;",
        "Lcom/intermedia/libs/Either$Right;",
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
    invoke-direct {p0}, Lcom/intermedia/libs/Either;-><init>()V

    return-void
.end method


# virtual methods
.method public final either(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TC;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TB;+TC;>;)TC;"
        }
    .end annotation

    const-string v0, "ifLeft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ifRight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p0, Lcom/intermedia/libs/Either$Left;

    if-eqz v0, :cond_0

    move-object p2, p0

    check-cast p2, Lcom/intermedia/libs/Either$Left;

    invoke-virtual {p2}, Lcom/intermedia/libs/Either$Left;->getLeft$app_externalRelease()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_0
    instance-of p1, p0, Lcom/intermedia/libs/Either$Right;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lcom/intermedia/libs/Either$Right;

    invoke-virtual {p1}, Lcom/intermedia/libs/Either$Right;->getRight$app_externalRelease()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final isLeft()Z
    .locals 1

    .line 21
    instance-of v0, p0, Lcom/intermedia/libs/Either$Left;

    return v0
.end method

.method public final isRight()Z
    .locals 1

    .line 22
    instance-of v0, p0, Lcom/intermedia/libs/Either$Right;

    return v0
.end method

.method public final left()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 25
    instance-of v0, p0, Lcom/intermedia/libs/Either$Left;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/intermedia/libs/Either$Left;

    invoke-virtual {v0}, Lcom/intermedia/libs/Either$Left;->getLeft$app_externalRelease()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p0, Lcom/intermedia/libs/Either$Right;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final right()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    instance-of v0, p0, Lcom/intermedia/libs/Either$Left;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p0, Lcom/intermedia/libs/Either$Right;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/intermedia/libs/Either$Right;

    invoke-virtual {v0}, Lcom/intermedia/libs/Either$Right;->getRight$app_externalRelease()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
