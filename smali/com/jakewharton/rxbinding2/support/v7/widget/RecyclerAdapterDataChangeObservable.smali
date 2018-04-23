.class final Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;
.super Lcom/jakewharton/rxbinding2/InitialValueObservable;
.source "RecyclerAdapterDataChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "+",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method protected getInitialValue()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method protected bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;->getInitialValue()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeListener(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {v0, p0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;Landroid/support/v7/widget/RecyclerView$Adapter;Lio/reactivex/Observer;)V

    .line 25
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 26
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
