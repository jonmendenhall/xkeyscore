.class public abstract Lcom/intermedia/util/logging/events/Connectivity;
.super Lcom/intermedia/util/logging/events/LoggableEvent;
.source "Connectivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/util/logging/events/Connectivity$Changed;,
        Lcom/intermedia/util/logging/events/Connectivity$Disconnected;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Connectivity.kt\ncom/intermedia/util/logging/events/Connectivity\n*L\n1#1,11:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u0082\u0001\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/Connectivity;",
        "Lcom/intermedia/util/logging/events/LoggableEvent;",
        "tag",
        "",
        "(Ljava/lang/String;)V",
        "toString",
        "Changed",
        "Disconnected",
        "Lcom/intermedia/util/logging/events/Connectivity$Changed;",
        "Lcom/intermedia/util/logging/events/Connectivity$Disconnected;",
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
    invoke-direct {p0, p1}, Lcom/intermedia/util/logging/events/Connectivity;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    instance-of v0, p0, Lcom/intermedia/util/logging/events/Connectivity$Changed;

    if-eqz v0, :cond_0

    const-string v0, "Connectivity:Changed { type: %s }"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/Connectivity$Changed;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/Connectivity$Changed;->getType()Ljava/lang/String;

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

    .line 9
    :cond_0
    instance-of v0, p0, Lcom/intermedia/util/logging/events/Connectivity$Disconnected;

    if-eqz v0, :cond_1

    const-string v0, "Connectivity:Disconnected"

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
