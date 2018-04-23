.class final Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;
.super Lio/reactivex/Observable;
.source "RecyclerViewChildAttachStateChangeEventObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;->view:Landroid/support/v7/widget/RecyclerView;

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
            "Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;Landroid/support/v7/widget/RecyclerView;Lio/reactivex/Observer;)V

    .line 26
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 27
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method
