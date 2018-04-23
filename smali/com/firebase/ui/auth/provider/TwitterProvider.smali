.class public Lcom/firebase/ui/auth/provider/TwitterProvider;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterProvider.java"

# interfaces
.implements Lcom/firebase/ui/auth/provider/IdpProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;",
        "Lcom/firebase/ui/auth/provider/IdpProvider;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwitterProvider"


# instance fields
.field private mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

.field private mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/firebase/ui/auth/provider/TwitterProvider;->initialize(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object p1, p0, Lcom/firebase/ui/auth/provider/TwitterProvider;->mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/provider/TwitterProvider;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/ui/auth/provider/TwitterProvider;->createIdpResponse(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/provider/TwitterProvider;)Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/firebase/ui/auth/provider/TwitterProvider;->mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    return-object p0
.end method

.method public static createAuthCredential(Lcom/firebase/ui/auth/IdpResponse;)Lcom/google/firebase/auth/AuthCredential;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->getIdpToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/IdpResponse;->getIdpSecret()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/firebase/auth/TwitterAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p0

    return-object p0
.end method

.method private createIdpResponse(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/firebase/ui/auth/IdpResponse;
    .locals 3

    .line 127
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v2, "twitter.com"

    invoke-direct {v1, v2, p2}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, p3}, Lcom/firebase/ui/auth/data/model/User$Builder;->setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p2

    .line 131
    invoke-virtual {p2, p4}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    .line 133
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p2

    check-cast p2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object p2, p2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/firebase/ui/auth/IdpResponse$Builder;->setToken(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;

    move-result-object p2

    .line 134
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->setSecret(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    return-object p1
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 3

    .line 44
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    sget v1, Lcom/firebase/ui/auth/R$string;->twitter_consumer_key:I

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/firebase/ui/auth/R$string;->twitter_consumer_secret:I

    .line 46
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object p0

    .line 50
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    return-void
.end method

.method private static signOut()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    return-void
.end method

.method public static signOut(Landroid/content/Context;)V
    .locals 0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getInstance()Lcom/twitter/sdk/android/core/Twitter;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    invoke-static {p0}, Lcom/firebase/ui/auth/provider/TwitterProvider;->initialize(Landroid/content/Context;)V

    .line 60
    :goto_0
    invoke-static {}, Lcom/firebase/ui/auth/provider/TwitterProvider;->signOut()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    const-string v0, "TwitterProvider"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure logging in to Twitter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/TwitterProvider;->mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    invoke-interface {p1}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onFailure()V

    return-void
.end method

.method public getButtonLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 75
    sget v0, Lcom/firebase/ui/auth/R$layout;->fui_idp_button_twitter:I

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 69
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_idp_name_twitter:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/TwitterProvider;->mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public setAuthenticationCallback(Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/TwitterProvider;->mCallbackObject:Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    return-void
.end method

.method public startLogin(Landroid/app/Activity;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/TwitterProvider;->mTwitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-virtual {v0, p1, p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/provider/TwitterProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/provider/TwitterProvider$1;-><init>(Lcom/firebase/ui/auth/provider/TwitterProvider;Lcom/twitter/sdk/android/core/Result;)V

    .line 99
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
