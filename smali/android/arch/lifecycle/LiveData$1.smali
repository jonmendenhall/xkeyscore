.class final Landroid/arch/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData$1;->init()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData$1;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-void
.end method

.method private init()Landroid/arch/lifecycle/LifecycleRegistry;
    .locals 2

    .line 73
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 74
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 75
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 76
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-object v0
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$1;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method
