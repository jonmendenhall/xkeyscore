.class public Lcom/firebase/ui/auth/provider/GoogleProvider;
.super Ljava/lang/Object;
.source "GoogleProvider.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/IdpProvider;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final RC_SIGN_IN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "GoogleProvider"


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mIdpCallback:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

.field private mIdpConfig:Lcom/firebase/ui/auth/AuthUI$IdpConfig;

.field private mSpecificAccount:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/AuthUI$IdpConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/ui/auth/provider/GoogleProvider;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/AuthUI$IdpConfig;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/AuthUI$IdpConfig;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 61
    iput-object p2, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mIdpConfig:Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mSpecificAccount:Z

    .line 63
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object p2, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 64
    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result v0

    invoke-virtual {p1, p2, v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 65
    invoke-direct {p0, p3}, Lcom/firebase/ui/auth/provider/GoogleProvider;->getSignInOptions(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public static createAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->getIdpToken()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p0

    return-object p0
.end method

.method private createIdpResponse(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 4

    .line 117
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v2, "google.com"

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;->setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->setToken(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    return-object p1
.end method

.method private getSignInOptions(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/firebase/ui/auth/R$string;->default_web_client_id:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mIdpConfig:Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getScopes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    new-instance v3, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v3, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    return-object p1
.end method

.method private onError(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 3

    .line 157
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V

    .line 161
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 162
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 163
    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result v1

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, v1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->getSignInOptions(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 166
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->startLogin(Landroid/app/Activity;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "GoogleProvider"

    const-string v1, "Developer error: this application is misconfigured. Check your SHA1  and package name in the Firebase console."

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "Developer error."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GoogleProvider"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error logging in with Google. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mIdpCallback:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    invoke-interface {p1}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onFailure()V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    return-void
.end method

.method public getButtonLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 101
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_idp_button_google:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 95
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_idp_name_google:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 p2, 0x14

    if-ne p1, p2, :cond_3

    .line 129
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 132
    iget-boolean p2, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mSpecificAccount:Z

    if-eqz p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object p3, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_signed_in_with_specific_account:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 135
    invoke-virtual {p3, v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 133
    invoke-static {p2, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_0
    iget-object p2, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mIdpCallback:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->createIdpResponse(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->onError(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    goto :goto_0

    :cond_2
    const-string p1, "No result found in intent"

    .line 145
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/provider/GoogleProvider;->onError(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "GoogleProvider"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAuthenticationCallback(Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mIdpCallback:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    return-void
.end method

.method public startLogin(Landroid/app/Activity;)V
    .locals 2

    .line 152
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/firebase/ui/auth/provider/GoogleProvider;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x14

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
