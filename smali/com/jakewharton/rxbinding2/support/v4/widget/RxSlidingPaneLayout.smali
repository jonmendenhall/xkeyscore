.class public final Lcom/jakewharton/rxbinding2/support/v4/widget/RxSlidingPaneLayout;
.super Ljava/lang/Object;
.source "RxSlidingPaneLayout.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static open(Landroid/support/v4/widget/SlidingPaneLayout;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/support/v4/widget/SlidingPaneLayout;
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
            "Landroid/support/v4/widget/SlidingPaneLayout;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 57
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSlidingPaneLayout$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/RxSlidingPaneLayout$1;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    return-object v0
.end method

.method public static panelOpens(Landroid/support/v4/widget/SlidingPaneLayout;)Lcom/jakewharton/rxbinding2/InitialValueObservable;
    .locals 1
    .param p0    # Landroid/support/v4/widget/SlidingPaneLayout;
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
            "Landroid/support/v4/widget/SlidingPaneLayout;",
            ")",
            "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 30
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    return-object v0
.end method

.method public static panelSlides(Landroid/support/v4/widget/SlidingPaneLayout;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v4/widget/SlidingPaneLayout;
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
            "Landroid/support/v4/widget/SlidingPaneLayout;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 45
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    return-object v0
.end method
