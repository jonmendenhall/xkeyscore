.class public final Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout;
.super Ljava/lang/Object;
.source "RxSwipeRefreshLayout.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static refreshes(Landroid/support/v4/widget/SwipeRefreshLayout;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v4/widget/SwipeRefreshLayout;
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
            "Landroid/support/v4/widget/SwipeRefreshLayout;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 20
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    return-object v0
.end method

.method public static refreshing(Landroid/support/v4/widget/SwipeRefreshLayout;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/support/v4/widget/SwipeRefreshLayout;
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
            "Landroid/support/v4/widget/SwipeRefreshLayout;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "view == null"

    .line 35
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    return-object v0
.end method
