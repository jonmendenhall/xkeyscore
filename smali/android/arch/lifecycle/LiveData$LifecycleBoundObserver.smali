.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation


# instance fields
.field public active:Z

.field public lastVersion:I

.field public final observer:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final owner:Landroid/arch/lifecycle/LifecycleOwner;

.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 363
    iput p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    .line 366
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 367
    iput-object p3, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 4

    .line 382
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 385
    :cond_0
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    .line 386
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 387
    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    if-eqz p1, :cond_3

    .line 388
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz p1, :cond_3

    .line 389
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 391
    :cond_3
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-nez p1, :cond_4

    .line 392
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 394
    :cond_4
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz p1, :cond_5

    .line 395
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    :cond_5
    return-void
.end method

.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 372
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_0

    .line 373
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    iget-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 378
    :cond_0
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    return-void
.end method
