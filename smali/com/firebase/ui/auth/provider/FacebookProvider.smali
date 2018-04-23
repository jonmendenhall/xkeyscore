.class public Lcom/firebase/ui/auth/provider/FacebookProvider;
.super Ljava/lang/Object;
.source "FacebookProvider.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/IdpProvider;
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/ui/auth/provider/IdpProvider;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMAIL:Ljava/lang/String; = "email"

.field private static final PUBLIC_PROFILE:Ljava/lang/String; = "public_profile"

.field private static final TAG:Ljava/lang/String; = "FacebookProvider"

.field private static sCallbackManager:Lcom/facebook/CallbackManager;


# instance fields
.field private mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

.field private final mScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/ui/auth/AuthUI$IdpConfig;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getScopes()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/firebase/ui/auth/provider/FacebookProvider;->mScopes:Ljava/util/List;

    goto :goto_0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/FacebookProvider;->mScopes:Ljava/util/List;

    .line 67
    :goto_0
    invoke-static {p2}, Lcom/facebook/WebDialog;->setWebDialogTheme(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/provider/FacebookProvider;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/firebase/ui/auth/provider/FacebookProvider;->onFailure()V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/provider/FacebookProvider;Lcom/facebook/login/LoginResult;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/ui/auth/provider/FacebookProvider;->onSuccess(Lcom/facebook/login/LoginResult;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static createAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->getIdpToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/auth/FacebookAuthProvider;->getCredential(Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p0

    return-object p0
.end method

.method private gcCallbackManager()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    sput-object v0, Lcom/firebase/ui/auth/provider/FacebookProvider;->sCallbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method private onFailure()V
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/firebase/ui/auth/provider/FacebookProvider;->gcCallbackManager()V

    .line 194
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/FacebookProvider;->mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    invoke-interface {v0}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onFailure()V

    return-void
.end method

.method private onSuccess(Lcom/facebook/login/LoginResult;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 182
    invoke-direct {p0}, Lcom/firebase/ui/auth/provider/FacebookProvider;->gcCallbackManager()V

    .line 183
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/FacebookProvider;->mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    new-instance v1, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v2, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v3, "facebook.com"

    invoke-direct {v2, v3, p2}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, p3}, Lcom/firebase/ui/auth/data/model/User$Builder;->setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p2

    .line 186
    invoke-virtual {p2, p4}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p2

    .line 187
    invoke-virtual {p2}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 188
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->setToken(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    .line 183
    invoke-interface {v0, p1}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V

    return-void
.end method


# virtual methods
.method public getButtonLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 85
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_idp_button_facebook:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 79
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_idp_name_facebook:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 116
    sget-object v0, Lcom/firebase/ui/auth/provider/FacebookProvider;->sCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/firebase/ui/auth/provider/FacebookProvider;->sCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/firebase/ui/auth/provider/FacebookProvider;->onFailure()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const-string v0, "FacebookProvider"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error logging in with Facebook. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/firebase/ui/auth/provider/FacebookProvider;->onFailure()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3

    .line 124
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/provider/FacebookProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/provider/FacebookProvider$1;-><init>(Lcom/firebase/ui/auth/provider/FacebookProvider;Lcom/facebook/login/LoginResult;)V

    .line 123
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name,email,picture"

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/provider/FacebookProvider;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public setAuthenticationCallback(Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/FacebookProvider;->mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    return-void
.end method

.method public startLogin(Landroid/app/Activity;)V
    .locals 3

    .line 90
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/firebase/ui/auth/provider/FacebookProvider;->sCallbackManager:Lcom/facebook/CallbackManager;

    .line 91
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/firebase/ui/auth/provider/FacebookProvider;->sCallbackManager:Lcom/facebook/CallbackManager;

    invoke-virtual {v0, v1, p0}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/firebase/ui/auth/provider/FacebookProvider;->mScopes:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "email"

    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "email"

    .line 98
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "public_profile"

    .line 101
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "public_profile"

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method
