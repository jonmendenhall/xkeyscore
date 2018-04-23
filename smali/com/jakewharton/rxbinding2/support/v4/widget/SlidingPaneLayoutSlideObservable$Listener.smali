.class final Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "SlidingPaneLayoutSlideObservable.java"

# interfaces
.implements Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable;
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
            "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    .line 34
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;->view:Landroid/support/v4/widget/SlidingPaneLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V

    return-void
.end method

.method public onPanelClosed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SlidingPaneLayoutSlideObservable$Listener;->observer:Lio/reactivex/Observer;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
