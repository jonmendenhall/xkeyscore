.class final Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "DrawerLayoutDrawerOpenedObservable.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Listener"
.end annotation


# instance fields
.field private final gravity:I

.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;ILio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/widget/DrawerLayout;",
            "I",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->view:Landroid/support/v4/widget/DrawerLayout;

    .line 41
    iput p2, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->gravity:I

    .line 42
    iput-object p3, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->view:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 61
    iget v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->gravity:I

    if-ne p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->observer:Lio/reactivex/Observer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 52
    iget v0, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->gravity:I

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/support/v4/widget/DrawerLayoutDrawerOpenedObservable$Listener;->observer:Lio/reactivex/Observer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
