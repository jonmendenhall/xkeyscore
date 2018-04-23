.class public abstract Lcom/intermedia/libs/rx/RecyclerViewUtils;
.super Ljava/lang/Object;
.source "RecyclerViewUtils.java"


# static fields
.field private static final NEAR_BOTTOM_THRESHOLD:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$scrolledNearBottom$0$RecyclerViewUtils(Landroid/util/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x5

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final synthetic lambda$scrolledNearBottom$1$RecyclerViewUtils(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method

.method public static scrolledNearBottom(Landroid/support/v7/widget/RecyclerView;)Lio/reactivex/Flowable;
    .locals 3
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RxRecyclerView;->scrollEvents(Landroid/support/v7/widget/RecyclerView;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    .line 23
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p0

    sget-object v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 24
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    sget-object v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    .line 25
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    const-class v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->ofType(Ljava/lang/Class;)Lio/reactivex/Flowable;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    .line 27
    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lio/reactivex/Flowable;->share()Lio/reactivex/Flowable;

    move-result-object p0

    .line 30
    sget-object v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$2;->$instance:Lio/reactivex/functions/Function;

    .line 31
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$3;->$instance:Lio/reactivex/functions/Function;

    .line 35
    invoke-virtual {p0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object p0

    .line 38
    sget-object v1, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$4;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v0, p0, v1}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object p0

    sget-object v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$5;->$instance:Lio/reactivex/functions/Predicate;

    .line 39
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p0

    sget-object v0, Lcom/intermedia/libs/rx/RecyclerViewUtils$$Lambda$6;->$instance:Lio/reactivex/functions/Function;

    .line 40
    invoke-virtual {p0, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0
.end method
