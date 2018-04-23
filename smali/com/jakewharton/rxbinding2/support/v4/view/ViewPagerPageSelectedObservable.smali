.class final Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;
.super Lcom/jakewharton/rxbinding2/InitialValueObservable;
.source "ViewPagerPageSelectedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;->view:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method protected getInitialValue()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;->view:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeListener(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;->view:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable$Listener;-><init>(Landroid/support/v4/view/ViewPager;Lio/reactivex/Observer;)V

    .line 18
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 19
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/view/ViewPagerPageSelectedObservable;->view:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
