.class final Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "SlidingPaneLayoutPaneOpenedObservable.java"

# interfaces
.implements Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/widget/SlidingPaneLayout;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 33
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V

    return-void
.end method

.method public onPanelClosed(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->observer:Lio/reactivex/Observer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;->observer:Lio/reactivex/Observer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
