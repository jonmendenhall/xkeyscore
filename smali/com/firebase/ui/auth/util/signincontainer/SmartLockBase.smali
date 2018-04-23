.class public abstract Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;
.super Lcom/firebase/ui/auth/ui/FragmentBase;
.source "SmartLockBase.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/ResultCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/firebase/ui/auth/ui/FragmentBase;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "TR;>;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private mActivityResultPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field protected mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mWasProgressDialogShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(ILandroid/content/Intent;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mActivityResultPair:Landroid/util/Pair;

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/firebase/ui/auth/ui/FragmentBase;->finish(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_general_error:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->onStart()V

    .line 34
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mActivityResultPair:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mActivityResultPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mActivityResultPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->finish(ILandroid/content/Intent;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-boolean v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mWasProgressDialogShowing:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_loading:I

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mWasProgressDialogShowing:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->onStop()V

    .line 45
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->isProgressDialogShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->mWasProgressDialogShowing:Z

    .line 46
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void
.end method
