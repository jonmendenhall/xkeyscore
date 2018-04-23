.class public Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;
.super Lcom/firebase/ui/auth/ui/FragmentBase;
.source "IdpSignInContainer.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final RC_WELCOME_BACK_IDP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "IDPSignInContainer"


# instance fields
.field private mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

.field private mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

.field private mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "IDPSignInContainer"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    .line 79
    instance-of v0, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static signIn(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "IDPSignInContainer"

    .line 61
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 62
    instance-of v0, v0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;

    invoke-direct {v0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/FlowParameters;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "extra_user"

    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->setArguments(Landroid/os/Bundle;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "IDPSignInContainer"

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IDPSignInContainer"

    const-string p2, "Cannot add fragment"

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 166
    invoke-virtual {p0, p2, p3}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->finish(ILandroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/firebase/ui/auth/provider/IdpProvider;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onAttach(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/firebase/ui/auth/ui/HelperActivityBase;

    if-nez p1, :cond_0

    .line 90
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can only attach IdpSignInContainer to HelperActivityBase."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/ui/HelperActivityBase;

    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/util/AuthHelper;->getSaveSmartLockInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    .line 101
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/data/model/User;->getUser(Landroid/os/Bundle;)Lcom/firebase/ui/auth/data/model/User;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User;->getProviderId()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v2

    iget-object v2, v2, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 106
    invoke-virtual {v3}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    const/4 p1, 0x0

    const/16 v0, 0x14

    .line 114
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->finish(ILandroid/content/Intent;)V

    return-void

    :cond_2
    const-string v2, "google.com"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    new-instance v1, Lcom/firebase/ui/auth/provider/GoogleProvider;

    .line 120
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 122
    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/firebase/ui/auth/provider/GoogleProvider;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/AuthUI$IdpConfig;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    goto :goto_1

    :cond_3
    const-string v0, "facebook.com"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    new-instance v0, Lcom/firebase/ui/auth/provider/FacebookProvider;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    iget v1, v1, Lcom/firebase/ui/auth/data/model/FlowParameters;->themeId:I

    invoke-direct {v0, v3, v1}, Lcom/firebase/ui/auth/provider/FacebookProvider;-><init>(Lcom/firebase/ui/auth/AuthUI$IdpConfig;I)V

    iput-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    goto :goto_1

    :cond_4
    const-string v0, "twitter.com"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    new-instance v0, Lcom/firebase/ui/auth/provider/TwitterProvider;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/provider/TwitterProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    .line 129
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-interface {v0, p0}, Lcom/firebase/ui/auth/provider/IdpProvider;->setAuthenticationCallback(Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;)V

    if-nez p1, :cond_6

    .line 132
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mIdpProvider:Lcom/firebase/ui/auth/provider/IdpProvider;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/firebase/ui/auth/provider/IdpProvider;->startLogin(Landroid/app/Activity;)V

    :cond_6
    return-void
.end method

.method public onFailure()V
    .locals 2

    const/16 v0, 0x14

    .line 159
    invoke-static {v0}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->finish(ILandroid/content/Intent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_existing_instance"

    const/4 v1, 0x1

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 6

    .line 144
    invoke-static {p1}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->getAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    iget-object v3, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mActivity:Lcom/firebase/ui/auth/ui/HelperActivityBase;

    iget-object v4, p0, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->mSaveSmartLock:Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;-><init>(Lcom/firebase/ui/auth/ui/HelperActivityBase;Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;ILcom/firebase/ui/auth/IdpResponse;)V

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v2, "IDPSignInContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure authenticating with credential "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
