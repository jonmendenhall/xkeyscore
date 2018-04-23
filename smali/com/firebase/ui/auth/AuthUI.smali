.class public Lcom/firebase/ui/auth/AuthUI;
.super Ljava/lang/Object;
.source "AuthUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;,
        Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;,
        Lcom/firebase/ui/auth/AuthUI$IdpConfig;,
        Lcom/firebase/ui/auth/AuthUI$SupportedProvider;
    }
.end annotation


# static fields
.field public static final EMAIL_PROVIDER:Ljava/lang/String; = "password"

.field public static final EXTRA_DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "extra_country_code"

.field public static final EXTRA_DEFAULT_NATIONAL_NUMBER:Ljava/lang/String; = "extra_national_number"

.field public static final EXTRA_DEFAULT_PHONE_NUMBER:Ljava/lang/String; = "extra_phone_number"

.field public static final FACEBOOK_PROVIDER:Ljava/lang/String; = "facebook.com"

.field public static final GOOGLE_PROVIDER:Ljava/lang/String; = "google.com"

.field private static final INSTANCES:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/firebase/ui/auth/AuthUI;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LOGO:I = -0x1

.field public static final PHONE_VERIFICATION_PROVIDER:Ljava/lang/String; = "phone"

.field public static final SOCIAL_PROVIDERS:Ljava/util/Set;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_PROVIDERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TWITTER_PROVIDER:Ljava/lang/String; = "twitter.com"


# instance fields
.field private final mApp:Lcom/google/firebase/FirebaseApp;

.field private final mAuth:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 140
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "password"

    const-string v2, "google.com"

    const-string v3, "facebook.com"

    const-string v4, "twitter.com"

    const-string v5, "phone"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/firebase/ui/auth/AuthUI;->SUPPORTED_PROVIDERS:Ljava/util/Set;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "google.com"

    const-string v2, "facebook.com"

    const-string v3, "twitter.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/firebase/ui/auth/AuthUI;->SOCIAL_PROVIDERS:Ljava/util/Set;

    .line 159
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lcom/firebase/ui/auth/AuthUI;->INSTANCES:Ljava/util/IdentityHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI;->mApp:Lcom/google/firebase/FirebaseApp;

    .line 166
    iget-object p1, p0, Lcom/firebase/ui/auth/AuthUI;->mApp:Lcom/google/firebase/FirebaseApp;

    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 168
    iget-object p1, p0, Lcom/firebase/ui/auth/AuthUI;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->useAppLanguage()V

    return-void
.end method

.method static synthetic access$300(Lcom/firebase/ui/auth/AuthUI;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/firebase/ui/auth/AuthUI;->mApp:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method private static getCredentialsFromFirebaseUser(Lcom/google/firebase/auth/FirebaseUser;)Ljava/util/List;
    .locals 5
    .param p0    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/api/credentials/Credential;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    const-string v3, "firebase"

    .line 312
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->providerIdToAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    new-instance v3, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    .line 319
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {v3, v4}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->build()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v2

    .line 318
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getDefaultTheme()I
    .locals 1
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 204
    sget v0, Lcom/firebase/ui/auth/R$style;->FirebaseUI:I

    return v0
.end method

.method public static getInstance()Lcom/firebase/ui/auth/AuthUI;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 179
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/ui/auth/AuthUI;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/firebase/ui/auth/AuthUI;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/firebase/ui/auth/AuthUI;
    .locals 3
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 188
    sget-object v0, Lcom/firebase/ui/auth/AuthUI;->INSTANCES:Ljava/util/IdentityHashMap;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/firebase/ui/auth/AuthUI;->INSTANCES:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/auth/AuthUI;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lcom/firebase/ui/auth/AuthUI;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/AuthUI;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 192
    sget-object v2, Lcom/firebase/ui/auth/AuthUI;->INSTANCES:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private signOutIdps(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :catch_0
    :try_start_1
    invoke-static {p1}, Lcom/firebase/ui/auth/provider/TwitterProvider;->signOut(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :catch_1
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createSignInIntentBuilder()Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 333
    new-instance v0, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;-><init>(Lcom/firebase/ui/auth/AuthUI;Lcom/firebase/ui/auth/AuthUI$1;)V

    return-object v0
.end method

.method public delete(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    new-instance p1, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;

    const/4 v0, 0x4

    .line 236
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No currently signed in user."

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 240
    :cond_0
    invoke-static {v0}, Lcom/firebase/ui/auth/AuthUI;->getCredentialsFromFirebaseUser(Lcom/google/firebase/auth/FirebaseUser;)Ljava/util/List;

    move-result-object v1

    .line 241
    invoke-static {p1}, Lcom/firebase/ui/auth/util/GoogleApiUtils;->getCredentialsClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object v2

    .line 244
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/AuthUI;->signOutIdps(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v3, Lcom/firebase/ui/auth/AuthUI$2;

    invoke-direct {v3, p0, v0}, Lcom/firebase/ui/auth/AuthUI$2;-><init>(Lcom/firebase/ui/auth/AuthUI;Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/AuthUI$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/firebase/ui/auth/AuthUI$1;-><init>(Lcom/firebase/ui/auth/AuthUI;Ljava/util/List;Lcom/google/android/gms/auth/api/credentials/CredentialsClient;)V

    .line 250
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public signOut(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    const/4 v0, 0x2

    .line 218
    new-array v0, v0, [Lcom/google/android/gms/tasks/Task;

    .line 219
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/AuthUI;->signOutIdps(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 220
    invoke-static {p1}, Lcom/firebase/ui/auth/util/GoogleApiUtils;->getCredentialsClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->disableAutoSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 218
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
