.class public Lcom/firebase/ui/auth/ui/HelperActivityBase;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HelperActivityBase.java"


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

    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/firebase/ui/auth/data/model/FlowParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/firebase/ui/auth/data/model/FlowParameters;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "context cannot be null"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {p0, v1, v3}, Lcom/firebase/ui/auth/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-string v1, "target activity cannot be null"

    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {p1, v1, v3}, Lcom/firebase/ui/auth/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra_flow_params"

    const-string p1, "flowParams cannot be null"

    new-array v1, v2, [Ljava/lang/Object;

    .line 37
    invoke-static {p2, p1, v1}, Lcom/firebase/ui/auth/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 36
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public finish(ILandroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->finish()V

    return-void
.end method

.method public getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mAuthHelper:Lcom/firebase/ui/auth/util/AuthHelper;

    return-object v0
.end method

.method public getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    return-object v0
.end method

.method public getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/data/model/FlowParameters;->fromIntent(Landroid/content/Intent;)Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mFlowParameters:Lcom/firebase/ui/auth/data/model/FlowParameters;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance p1, Lcom/firebase/ui/auth/util/AuthHelper;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/firebase/ui/auth/util/AuthHelper;-><init>(Lcom/firebase/ui/auth/data/model/FlowParameters;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mAuthHelper:Lcom/firebase/ui/auth/util/AuthHelper;

    .line 44
    new-instance p1, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    invoke-direct {p1, p0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/HelperActivityBase;->mProgressDialogHolder:Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void
.end method

.method public saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 1
    .param p1    # Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V

    return-void
.end method

.method public saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0
    .param p1    # Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 88
    invoke-virtual {p4}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->finish(ILandroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->saveCredentialsOrFinish(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V

    :goto_0
    return-void
.end method
