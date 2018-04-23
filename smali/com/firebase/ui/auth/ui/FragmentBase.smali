.class public Lcom/firebase/ui/auth/ui/FragmentBase;
.super Landroid/support/v4/app/Fragment;
.source "FragmentBase.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/firebase/ui/auth/util/AuthHelper;

.field private mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

.field private mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(ILandroid/content/Intent;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mAuthHelper:Lcom/firebase/ui/auth/util/AuthHelper;

    return-object v0
.end method

.method public getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    return-object v0
.end method

.method public getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/data/model/FlowParameters;->fromBundle(Landroid/os/Bundle;)Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance p1, Lcom/firebase/ui/auth/util/AuthHelper;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/firebase/ui/auth/util/AuthHelper;-><init>(Lcom/firebase/ui/auth/data/model/FlowParameters;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mAuthHelper:Lcom/firebase/ui/auth/util/AuthHelper;

    .line 26
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 27
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    iget v1, v1, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance v0, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    invoke-direct {v0, p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 34
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/FragmentBase;->mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 60
    invoke-virtual/range {v0 .. v7}, Lcom/firebase/ui/auth/ui/FragmentBase;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
