.class public final Lcom/jakewharton/rxbinding2/support/v4/widget/RxNestedScrollView;
.super Ljava/lang/Object;
.source "RxNestedScrollView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static scrollChangeEvents(Landroid/support/v4/widget/NestedScrollView;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v4/widget/NestedScrollView;
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
            "Landroid/support/v4/widget/NestedScrollView;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 20
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable;-><init>(Landroid/support/v4/widget/NestedScrollView;)V

    return-object v0
.end method
