.class Lkotlin/collections/ArraysKt__ArraysKt;
.super Lkotlin/collections/ArraysKt__ArraysJVMKt;
.source "Arrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,50:1\n11364#2,5:51\n*E\n*S KotlinDebug\n*F\n+ 1 Arrays.kt\nkotlin/collections/ArraysKt__ArraysKt\n*L\n29#1,5:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a+\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0012\u0012\u000e\u0008\u0001\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u00030\u0003\u00a2\u0006\u0002\u0010\u0004\u001aG\u0010\u0005\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00070\u00010\u0006\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0007*\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00070\u00060\u0003\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "flatten",
        "",
        "T",
        "",
        "([[Ljava/lang/Object;)Ljava/util/List;",
        "unzip",
        "Lkotlin/Pair;",
        "R",
        "([Lkotlin/Pair;)Lkotlin/Pair;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x9
    }
    xi = 0x1
    xs = "kotlin/collections/ArraysKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/ArraysKt__ArraysJVMKt;-><init>()V

    return-void
.end method

.method public static final flatten([[Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p0    # [[Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 52
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    .line 53
    check-cast v4, [Ljava/lang/Object;

    .line 29
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    .line 31
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final unzip([Lkotlin/Pair;)Lkotlin/Pair;
    .locals 5
    .param p0    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlin/Pair<",
            "+TT;+TR;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    array-length v1, v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 44
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v3, p0, v1

    .line 45
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
