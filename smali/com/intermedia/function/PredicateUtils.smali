.class public abstract Lcom/intermedia/function/PredicateUtils;
.super Ljava/lang/Object;
.source "PredicateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$not$0$PredicateUtils(Lio/reactivex/functions/Predicate;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Lio/reactivex/functions/Predicate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-interface {p0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static not(Lio/reactivex/functions/Predicate;)Lio/reactivex/functions/Predicate;
    .locals 1
    .param p0    # Lio/reactivex/functions/Predicate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Predicate<",
            "TT;>;)",
            "Lio/reactivex/functions/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/intermedia/function/PredicateUtils$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/function/PredicateUtils$$Lambda$0;-><init>(Lio/reactivex/functions/Predicate;)V

    return-object v0
.end method
