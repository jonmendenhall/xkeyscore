.class final Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "RecyclerViewScrollStateChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Listener"
.end annotation


# instance fields
.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field final synthetic this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;Landroid/support/v7/widget/RecyclerView;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;

    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 32
    new-instance p2, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener$1;-><init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable;Lio/reactivex/Observer;)V

    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollStateChangeObservable$Listener;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
