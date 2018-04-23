.class final Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;
.super Lcom/jakewharton/rxbinding2/InitialValueObservable;
.source "SlidingPaneLayoutPaneOpenedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    return-void
.end method


# virtual methods
.method protected getInitialValue()Ljava/lang/Boolean;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;->getInitialValue()Ljava/lang/Boolean;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable$Listener;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Lio/reactivex/Observer;)V

    .line 19
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 20
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutPaneOpenedObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V

    return-void
.end method
