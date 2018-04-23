.class final Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;
.super Lio/reactivex/Observable;
.source "SwipeRefreshLayoutRefreshObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;->view:Landroid/support/v4/widget/SwipeRefreshLayout;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;->view:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;Lio/reactivex/Observer;)V

    .line 24
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 25
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;->view:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method
