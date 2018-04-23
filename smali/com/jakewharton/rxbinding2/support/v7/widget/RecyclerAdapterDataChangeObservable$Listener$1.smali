.class Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerAdapterDataChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;Landroid/support/v7/widget/RecyclerView$Adapter;Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;

.field final synthetic val$observer:Lio/reactivex/Observer;

.field final synthetic val$recyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic val$this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;Lio/reactivex/Observer;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;

    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->val$this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;

    iput-object p3, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->val$observer:Lio/reactivex/Observer;

    iput-object p4, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->val$recyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;

    invoke-virtual {v0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->val$observer:Lio/reactivex/Observer;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable$Listener$1;->val$recyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
