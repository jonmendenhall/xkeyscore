.class public Lcom/firebase/ui/auth/KickoffActivity;
.super Lcom/firebase/ui/auth/ui/HelperActivityBase;
.source "KickoffActivity.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final IS_WAITING_FOR_PLAY_SERVICES:Ljava/lang/String; = "is_waiting_for_play_services"

.field private static final RC_PLAY_SERVICES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KickoffActivity"


# instance fields
.field private mIsWaitingForPlayServices:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/firebase/ui/auth/KickoffActivity;->mIsWaitingForPlayServices:Z

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;
    .locals 1

    .line 26
    const-class v0, Lcom/firebase/ui/auth/KickoffActivity;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private isOffline()Z
    .locals 2

    const-string v0, "connectivity"

    .line 97
    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/KickoffActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private start()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/firebase/ui/auth/KickoffActivity;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->delegate(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/data/model/FlowParameters;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/firebase/ui/auth/KickoffActivity;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/16 p2, 0x14

    .line 77
    invoke-static {p2}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/KickoffActivity;->finish(ILandroid/content/Intent;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "is_waiting_for_play_services"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/KickoffActivity;->isOffline()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "KickoffActivity"

    const-string v0, "No network connection"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/16 v0, 0xa

    .line 37
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/KickoffActivity;->finish(ILandroid/content/Intent;)V

    return-void

    .line 41
    :cond_1
    new-instance p1, Lcom/firebase/ui/auth/KickoffActivity$1;

    invoke-direct {p1, p0}, Lcom/firebase/ui/auth/KickoffActivity$1;-><init>(Lcom/firebase/ui/auth/KickoffActivity;)V

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/util/PlayServicesHelper;->makePlayServicesAvailable(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/firebase/ui/auth/KickoffActivity;->start()V

    goto :goto_0

    .line 56
    :cond_2
    iput-boolean v0, p0, Lcom/firebase/ui/auth/KickoffActivity;->mIsWaitingForPlayServices:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_existing_instance"

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_waiting_for_play_services"

    .line 65
    iget-boolean v1, p0, Lcom/firebase/ui/auth/KickoffActivity;->mIsWaitingForPlayServices:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
