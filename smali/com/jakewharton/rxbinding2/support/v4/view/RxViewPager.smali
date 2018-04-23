.class public final Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager;
.super Ljava/lang/Object;
.source "RxViewPager.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static currentItem(Landroid/support/v4/view/ViewPager;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/support/v4/view/ViewPager;
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
            "Landroid/support/v4/view/ViewPager;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "view == null"

    .line 51
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/view/RxViewPager$1;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method

.method public static pageScrollStateChanges(Landroid/support/v4/view/ViewPager;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/support/v4/view/ViewPager;
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
            "Landroid/support/v4/view/ViewPager;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 22
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method

.method public static pageSelections(Landroid/support/v4/view/ViewPager;)Lcom/jakewharton/rxbinding2/InitialValueObservable;
    .locals 1
    .param p0    # Landroid/support/v4/view/ViewPager;
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
            "Landroid/support/v4/view/ViewPager;",
            ")",
            "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 36
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method
