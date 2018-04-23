.class public Landroid/arch/lifecycle/ViewModelStores;
.super Ljava/lang/Object;
.source "ViewModelStores.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 0
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 54
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/HolderFragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 0
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 43
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/HolderFragment;->getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method
