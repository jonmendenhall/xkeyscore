.class Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollStateChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;Landroid/support/v7/widget/RecyclerView;Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;

.field final synthetic val$observer:Lio/reactivex/Observer;

.field final synthetic val$this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;Lio/reactivex/Observer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;->this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;

    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;->val$this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;

    iput-object p3, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;->val$observer:Lio/reactivex/Observer;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;->this$1:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;->val$observer:Lio/reactivex/Observer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
