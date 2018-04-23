.class public Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
.super Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;
.source "SaveSmartLock.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final RC_SAVE:I = 0x64

.field private static final RC_UPDATE_SERVICE:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "SaveSmartLock"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProfilePictureUri:Ljava/lang/String;

.field private mResponse:Lcom/firebase/ui/auth/IdpResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;-><init>()V

    return-void
.end method

.method private finish()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish(ILandroid/content/Intent;)V

    return-void
.end method

.method public static getInstance(Lcom/firebase/ui/auth/ui/HelperActivityBase;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SaveSmartLock"

    .line 65
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 66
    instance-of v2, v1, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    if-nez v2, :cond_0

    .line 67
    new-instance v1, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    invoke-direct {v1}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/data/model/FlowParameters;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->setArguments(Landroid/os/Bundle;)V

    .line 70
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v0, "SaveSmartLock"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SaveSmartLock"

    const-string v1, "Cannot add fragment"

    .line 72
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_0
    check-cast v1, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    if-eq p2, p3, :cond_0

    const-string p1, "SaveSmartLock"

    const-string p2, "SAVE: Canceled by user"

    .line 168
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_3

    if-ne p2, p3, :cond_2

    .line 173
    new-instance p1, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    iget-object p2, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mEmail:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/firebase/ui/auth/util/AuthHelper;->getCredentialsApi()Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    move-result-object p2

    iget-object p3, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 177
    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 178
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    :cond_2
    const-string p1, "SaveSmartLock"

    const-string p2, "SAVE: Canceled by user"

    .line 180
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->onAttach(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mEmail:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SaveSmartLock"

    const-string v0, "Unable to save null credential!"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    return-void

    .line 96
    :cond_0
    new-instance p1, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mEmail:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 98
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mPassword:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 100
    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->providerIdToAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    goto :goto_0

    :cond_1
    const-string p1, "SaveSmartLock"

    const-string v0, "Unable to save null credential!"

    .line 104
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    return-void

    .line 110
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mProfilePictureUri:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mProfilePictureUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getCredentialsApi()Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->save(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_general_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-static {}, Lcom/firebase/ui/auth/util/PlayServicesHelper;->getGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    const/16 v2, 0x1c

    .line 129
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->startIntentSenderForResult(Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SaveSmartLock"

    const-string v1, "STATUS: Failed to send resolution."

    .line 135
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->startIntentSenderForResult(Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SaveSmartLock"

    const-string v1, "STATUS: Failed to send resolution."

    .line 152
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "SaveSmartLock"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status message:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    :goto_0
    return-void
.end method

.method public saveCredentialsOrFinish(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/firebase/ui/auth/IdpResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    iput-object p3, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 206
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p3

    iget-boolean p3, p3, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableCredentials:Z

    if-nez p3, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->finish()V

    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mName:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mEmail:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mPassword:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mProfilePictureUri:Ljava/lang/String;

    .line 217
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object p2, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 220
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result p3

    invoke-virtual {p1, p2, p3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 223
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method
