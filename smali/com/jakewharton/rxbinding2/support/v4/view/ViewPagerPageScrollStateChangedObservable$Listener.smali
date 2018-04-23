.class final Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "ViewPagerPageScrollStateChangedObservable.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Listener"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/ViewPager;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener;->view:Landroid/support/v4/view/ViewPager;

    .line 33
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener;->view:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageScrollStateChangedObservable$Listener;->observer:Lio/reactivex/Observer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
