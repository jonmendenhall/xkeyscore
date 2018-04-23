.class final Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "NestedScrollViewScrollChangeEventObservable.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable;
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
            "Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/support/v4/widget/NestedScrollView;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/NestedScrollView;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/widget/NestedScrollView;",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;->view:Landroid/support/v4/widget/NestedScrollView;

    .line 34
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;->view:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    check-cast v1, Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;->observer:Lio/reactivex/Observer;

    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/NestedScrollViewScrollChangeEventObservable$Listener;->view:Landroid/support/v4/widget/NestedScrollView;

    .line 42
    invoke-static {v0, p2, p3, p4, p5}, Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;->create(Landroid/view/View;IIII)Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;

    move-result-object p2

    .line 41
    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
