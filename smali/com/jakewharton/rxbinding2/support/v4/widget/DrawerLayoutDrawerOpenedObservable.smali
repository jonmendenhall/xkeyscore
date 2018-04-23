.class final Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;
.super Lcom/jakewharton/rxbinding2/InitialValueObservable;
.source "DrawerLayoutDrawerOpenedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final gravity:I

.field private final view:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->view:Landroid/support/v4/widget/DrawerLayout;

    .line 18
    iput p2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->gravity:I

    return-void
.end method


# virtual methods
.method protected getInitialValue()Ljava/lang/Boolean;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->view:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->gravity:I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->getInitialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeListener(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
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
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->view:Landroid/support/v4/widget/DrawerLayout;

    iget v2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->gravity:I

    invoke-direct {v0, v1, v2, p1}, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;-><init>(Landroid/support/v4/widget/DrawerLayout;ILio/reactivex/Observer;)V

    .line 26
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 27
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;->view:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method
