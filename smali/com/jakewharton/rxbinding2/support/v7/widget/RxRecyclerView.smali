.class public final Lcom/jakewharton/rxbinding2/support/v7/widget/RxRecyclerView;
.super Ljava/lang/Object;
.source "RxRecyclerView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static childAttachStateChangeEvents(Landroid/support/v7/widget/RecyclerView;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 24
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method public static scrollEvents(Landroid/support/v7/widget/RecyclerView;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 37
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method public static scrollStateChanges(Landroid/support/v7/widget/RecyclerView;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 49
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method
