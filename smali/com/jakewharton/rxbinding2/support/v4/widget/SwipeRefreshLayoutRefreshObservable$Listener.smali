.class final Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "SwipeRefreshLayoutRefreshObservable.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Listener"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/widget/SwipeRefreshLayout;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;->view:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 34
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;->view:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/SwipeRefreshLayoutRefreshObservable$Listener;->observer:Lio/reactivex/Observer;

    sget-object v1, Lcom/jakewharton/rxbinding2/internal/Notification;->INSTANCE:Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
