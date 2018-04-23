.class final Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;
.super Lio/reactivex/Observable;
.source "SlidingPaneLayoutSlideObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Lio/reactivex/Observer;)V

    .line 23
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 24
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V

    return-void
.end method
