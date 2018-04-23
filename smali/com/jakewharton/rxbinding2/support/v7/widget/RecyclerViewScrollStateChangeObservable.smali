.class final Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;
.super Lio/reactivex/Observable;
.source "RecyclerViewScrollStateChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;->view:Landroid/support/v7/widget/RecyclerView;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;Landroid/support/v7/widget/RecyclerView;Lio/reactivex/Observer;)V

    .line 22
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 23
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;->view:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
