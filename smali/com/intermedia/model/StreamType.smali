.class public abstract Lcom/intermedia/model/StreamType;
.super Ljava/lang/Object;
.source "StreamType.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/StreamType$High;,
        Lcom/intermedia/model/StreamType$Low;,
        Lcom/intermedia/model/StreamType$Medium;,
        Lcom/intermedia/model/StreamType$Passthrough;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamType.kt\ncom/intermedia/model/StreamType\n*L\n1#1,44:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u000b\u000c\r\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0000J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0006\u0010\t\u001a\u00020\u0000J\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u0082\u0001\u0004\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/intermedia/model/StreamType;",
        "Ljava/io/Serializable;",
        "()V",
        "canDownstep",
        "",
        "canUpstep",
        "downStep",
        "toString",
        "",
        "upStep",
        "url",
        "High",
        "Low",
        "Medium",
        "Passthrough",
        "Lcom/intermedia/model/StreamType$High;",
        "Lcom/intermedia/model/StreamType$Low;",
        "Lcom/intermedia/model/StreamType$Medium;",
        "Lcom/intermedia/model/StreamType$Passthrough;",
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/intermedia/model/StreamType;-><init>()V

    return-void
.end method


# virtual methods
.method public final canDownstep()Z
    .locals 1

    .line 17
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Low;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final canUpstep()Z
    .locals 1

    .line 12
    instance-of v0, p0, Lcom/intermedia/model/StreamType$High;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final downStep()Lcom/intermedia/model/StreamType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    instance-of v0, p0, Lcom/intermedia/model/StreamType$High;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/intermedia/model/StreamType$Medium;

    move-object v1, p0

    check-cast v1, Lcom/intermedia/model/StreamType$High;

    invoke-virtual {v1}, Lcom/intermedia/model/StreamType$High;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/model/StreamType$Medium;-><init>(Lcom/intermedia/model/Streams;)V

    check-cast v0, Lcom/intermedia/model/StreamType;

    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Low;

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Medium;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/intermedia/model/StreamType$Low;

    move-object v1, p0

    check-cast v1, Lcom/intermedia/model/StreamType$Medium;

    invoke-virtual {v1}, Lcom/intermedia/model/StreamType$Medium;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/model/StreamType$Low;-><init>(Lcom/intermedia/model/Streams;)V

    check-cast v0, Lcom/intermedia/model/StreamType;

    goto :goto_0

    .line 25
    :cond_2
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Passthrough;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/intermedia/model/StreamType$High;

    move-object v1, p0

    check-cast v1, Lcom/intermedia/model/StreamType$Passthrough;

    invoke-virtual {v1}, Lcom/intermedia/model/StreamType$Passthrough;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/model/StreamType$High;-><init>(Lcom/intermedia/model/Streams;)V

    check-cast v0, Lcom/intermedia/model/StreamType;

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClass.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final upStep()Lcom/intermedia/model/StreamType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    instance-of v0, p0, Lcom/intermedia/model/StreamType$High;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/intermedia/model/StreamType$Passthrough;

    move-object v1, p0

    check-cast v1, Lcom/intermedia/model/StreamType$High;

    invoke-virtual {v1}, Lcom/intermedia/model/StreamType$High;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/model/StreamType$Passthrough;-><init>(Lcom/intermedia/model/Streams;)V

    check-cast v0, Lcom/intermedia/model/StreamType;

    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Low;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/intermedia/model/StreamType$Medium;

    move-object v1, p0

    check-cast v1, Lcom/intermedia/model/StreamType$Low;

    invoke-virtual {v1}, Lcom/intermedia/model/StreamType$Low;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/model/StreamType$Medium;-><init>(Lcom/intermedia/model/Streams;)V

    check-cast v0, Lcom/intermedia/model/StreamType;

    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Medium;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/intermedia/model/StreamType$High;

    move-object v1, p0

    check-cast v1, Lcom/intermedia/model/StreamType$Medium;

    invoke-virtual {v1}, Lcom/intermedia/model/StreamType$Medium;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/model/StreamType$High;-><init>(Lcom/intermedia/model/Streams;)V

    check-cast v0, Lcom/intermedia/model/StreamType;

    goto :goto_0

    .line 32
    :cond_2
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Passthrough;

    if-eqz v0, :cond_3

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final url()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 36
    instance-of v0, p0, Lcom/intermedia/model/StreamType$High;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/intermedia/model/StreamType$High;

    invoke-virtual {v0}, Lcom/intermedia/model/StreamType$High;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/Streams;->high()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Low;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/intermedia/model/StreamType$Low;

    invoke-virtual {v0}, Lcom/intermedia/model/StreamType$Low;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/Streams;->low()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Medium;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/intermedia/model/StreamType$Medium;

    invoke-virtual {v0}, Lcom/intermedia/model/StreamType$Medium;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/Streams;->medium()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    instance-of v0, p0, Lcom/intermedia/model/StreamType$Passthrough;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/intermedia/model/StreamType$Passthrough;

    invoke-virtual {v0}, Lcom/intermedia/model/StreamType$Passthrough;->getStreams()Lcom/intermedia/model/Streams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/Streams;->passthrough()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
