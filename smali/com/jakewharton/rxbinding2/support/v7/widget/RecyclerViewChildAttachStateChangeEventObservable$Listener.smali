.class final Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "RecyclerViewChildAttachStateChangeEventObservable.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Listener"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;Landroid/support/v7/widget/RecyclerView;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->this$0:Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable;

    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 37
    iput-object p3, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->observer:Lio/reactivex/Observer;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachEvent;->create(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->observer:Lio/reactivex/Observer;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;->create(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildDetachEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDispose()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEventObservable$Listener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method
