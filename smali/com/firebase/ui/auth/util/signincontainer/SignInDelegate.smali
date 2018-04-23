.class public Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;
.super Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;
.source "SignInDelegate.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final RC_AUTH_METHOD_PICKER:I = 0x4

.field private static final RC_CREDENTIALS_READ:I = 0x2

.field private static final RC_EMAIL_FLOW:I = 0x5

.field private static final RC_IDP_SIGNIN:I = 0x3

.field private static final RC_PHONE_FLOW:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SignInDelegate"


# instance fields
.field private mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->deleteCredentialAndRedirect()V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startAuthMethodChoice()V

    return-void
.end method

.method public static delegate(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/data/model/FlowParameters;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "SignInDelegate"

    .line 72
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 73
    instance-of v0, v0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    invoke-direct {v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/firebase/ui/auth/data/model/FlowParameters;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->setArguments(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "SignInDelegate"

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private deleteCredentialAndRedirect()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v0, :cond_0

    const-string v0, "SignInDelegate"

    const-string v1, "deleteCredentialAndRedirect: null credential"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startAuthMethodChoice()V

    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/util/GoogleSignInHelper;->getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/firebase/ui/auth/util/GoogleSignInHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 323
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/util/GoogleSignInHelper;->delete(Lcom/google/android/gms/auth/api/credentials/Credential;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$3;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$3;-><init>(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private getAccountTypeFromCredential()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmailFromCredential()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "SignInDelegate"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    .line 82
    instance-of v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    if-eqz v0, :cond_0

    .line 83
    check-cast p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPasswordFromCredential()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/Credential;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedAccountTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    iget-object v1, v1, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 190
    invoke-virtual {v2}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google.com"

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "facebook.com"

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "twitter.com"

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    :cond_1
    invoke-static {v2}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->providerIdToAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private handleCredential(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    .line 222
    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mCredential:Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 223
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getEmailFromCredential()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getPasswordFromCredential()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getAccountTypeFromCredential()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->redirectToIdpSignIn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private redirectToIdpSignIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 340
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    .line 338
    invoke-static {p2, v0, p1}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x5

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v0, "https://accounts.google.com"

    .line 346
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://www.facebook.com"

    .line 347
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://twitter.com"

    .line 348
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SignInDelegate"

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p2

    .line 357
    invoke-static {p1, p2}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x3

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    .line 361
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    goto :goto_1

    .line 350
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    new-instance v2, Lcom/firebase/ui/auth/data/model/User$Builder;

    .line 352
    invoke-static {p2}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->accountTypeToProviderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    .line 349
    invoke-static {v0, v1, p1}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->signIn(Landroid/support/v4/app/FragmentActivity;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;)V

    :goto_1
    return-void
.end method

.method private signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 281
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 283
    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 286
    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;

    invoke-direct {p2, p0, v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;-><init>(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;Lcom/firebase/ui/auth/IdpResponse;)V

    .line 287
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v0, "SignInDelegate"

    const-string v1, "Error signing in with email and password"

    invoke-direct {p2, v0, v1}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$1;

    invoke-direct {p2, p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$1;-><init>(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V

    .line 295
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private startAuthMethodChoice()V
    .locals 8

    .line 237
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v0

    .line 238
    iget-object v1, v0, Lcom/firebase/ui/auth/data/model/FlowParameters;->providerInfo:Ljava/util/List;

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    .line 242
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 243
    invoke-virtual {v1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 244
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x65b3d6e

    if-eq v6, v7, :cond_1

    const v3, 0x4889ba9b

    if-eq v6, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "password"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    const-string v2, "phone"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    .line 262
    invoke-static {v4}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->providerIdToAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->redirectToIdpSignIn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :pswitch_0
    invoke-virtual {v1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x6

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 248
    :pswitch_1
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/firebase/ui/auth/ui/email/EmailActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 267
    invoke-static {v1, v0}, Lcom/firebase/ui/auth/ui/idp/AuthMethodPickerActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    :goto_2
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    .line 180
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->getInstance(Landroid/support/v4/app/FragmentActivity;)Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lcom/firebase/ui/auth/util/signincontainer/IdpSignInContainer;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 177
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->finish(ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 166
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 167
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->handleCredential(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startAuthMethodChoice()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 91
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object p1

    .line 98
    iget-boolean p1, p1, Lcom/firebase/ui/auth/data/model/FlowParameters;->enableCredentials:Z

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_loading:I

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 101
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/firebase/ui/auth/util/GoogleApiHelper;->getSafeAutoManageId()I

    move-result v1

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 106
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 108
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/util/AuthHelper;->getCredentialsApi()Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setPasswordLoginSupported(Z)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    move-result-object v1

    .line 112
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    move-result-object v1

    .line 109
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 114
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startAuthMethodChoice()V

    :goto_0
    return-void
.end method

.method public onResult(Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->handleCredential(Lcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startIntentSenderForResult(Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SignInDelegate"

    const-string v1, "Failed to send Credentials intent."

    .line 145
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p1, "SignInDelegate"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status message:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->startAuthMethodChoice()V

    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->onResult(Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "has_existing_instance"

    const/4 v1, 0x1

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SmartLockBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
