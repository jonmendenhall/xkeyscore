.class public abstract Lcom/intermedia/util/PairUtils;
.super Ljava/lang/Object;
.source "PairUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Landroid/util/Pair;)Z
    .locals 2
    .param p0    # Landroid/util/Pair;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "**>;)Z"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static first(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .param p0    # Landroid/util/Pair;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Pair<",
            "TT;*>;)TT;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static second(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .param p0    # Landroid/util/Pair;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Pair<",
            "*TT;>;)TT;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method
