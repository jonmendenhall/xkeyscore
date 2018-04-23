.class final Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "RecyclerAdapterDataChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Listener"
.end annotation


# instance fields
.field final dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private final recyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;Landroid/support/v7/widget/RecyclerView$Adapter;Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;

    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->recyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 39
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;Lio/reactivex/Observer;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->recyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
