.class Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollEventObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable;Landroid/support/v7/widget/RecyclerView;Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener;

.field final synthetic val$observer:Lio/reactivex/Observer;

.field final synthetic val$this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener;Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable;Lio/reactivex/Observer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener$1;->this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener;

    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener$1;->val$this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable;

    iput-object p3, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener$1;->val$observer:Lio/reactivex/Observer;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener$1;->this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener;

    invoke-virtual {v0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEventObservable$Listener$1;->val$observer:Lio/reactivex/Observer;

    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEvent;->create(Landroid/support/v7/widget/RecyclerView;II)Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
