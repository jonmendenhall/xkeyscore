.class public Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;
.super Lcom/amazonaws/auth/CognitoCredentialsProvider;
.source "CognitoCachingCredentialsProvider.java"


# static fields
.field private static final AK_KEY:Ljava/lang/String; = "accessKey"

.field private static final EXP_KEY:Ljava/lang/String; = "expirationDate"

.field private static final ID_KEY:Ljava/lang/String; = "identityId"

.field private static final SK_KEY:Ljava/lang/String; = "secretKey"

.field private static final ST_KEY:Ljava/lang/String; = "sessionToken"

.field private static final TAG:Ljava/lang/String; = "CognitoCachingCredentialsProvider"

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private final DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

.field private identityId:Ljava/lang/String;

.field private final listener:Lcom/amazonaws/auth/IdentityChangedListener;

.field volatile needIdentityRefresh:Z

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    .locals 0

    .line 391
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 393
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 395
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 397
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 0

    .line 427
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 429
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 431
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 433
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 329
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 331
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 333
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 335
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 0

    .line 357
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 359
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 361
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 363
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 1

    .line 228
    invoke-direct {p0, p2}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 230
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "com.amazonaws.android.auth"

    .line 232
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 234
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 0

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 190
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 192
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 0

    .line 264
    invoke-direct {p0, p2, p3, p4}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 266
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 268
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 270
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 127
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 129
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 157
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 159
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 161
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 163
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 302
    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/CognitoCredentialsProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    const-string p2, "com.amazonaws.android.auth"

    .line 80
    iput-object p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->DEFAULT_SHAREDPREFERENCES_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 96
    new-instance p3, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;

    invoke-direct {p3, p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider$1;-><init>(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;)V

    iput-object p3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    if-nez p1, :cond_0

    .line 304
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p3, "com.amazonaws.android.auth"

    .line 306
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    .line 308
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    return-void
.end method

.method private checkUpgrade()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "identityId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Identity id without namespace is detected. It will be saved under new namespace."

    .line 652
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "identityId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "identityId"

    .line 657
    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 1

    .line 437
    invoke-direct {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->checkUpgrade()V

    .line 438
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getCachedIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->loadCachedCredentials()V

    .line 440
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->listener:Lcom/amazonaws/auth/IdentityChangedListener;

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->registerIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V

    return-void
.end method

.method private namespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveCredentials(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    .locals 3

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Saving credentials to SharedPreferences"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessKey"

    .line 618
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secretKey"

    .line 619
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sessionToken"

    .line 620
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/auth/AWSSessionCredentials;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "expirationDate"

    .line 621
    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 622
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private saveIdentityId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Saving identity id to SharedPreferences"

    .line 631
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "identityId"

    .line 635
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 636
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 547
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->clear()V

    .line 550
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearCredentials()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 562
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->clearCredentials()V

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Clearing credentials from SharedPreferences"

    .line 563
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessKey"

    .line 565
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secretKey"

    .line 566
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sessionToken"

    .line 567
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expirationDate"

    .line 568
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 569
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public getCachedIdentityId()Ljava/lang/String;
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "identityId"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 583
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->loadCachedCredentials()V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needsNewSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_0
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 485
    :cond_1
    :try_start_1
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 488
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 490
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 489
    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveCredentials(Lcom/amazonaws/auth/AWSSessionCredentials;J)V

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_1
    .catch Lcom/amazonaws/services/cognitoidentity/model/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CognitoCachingCredentialsProvider"

    const-string v2, "Failure to get credentials"

    .line 494
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getLogins()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 498
    invoke-super {p0, v0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setIdentityId(Ljava/lang/String;)V

    .line 499
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSSessionCredentials;

    .line 500
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 503
    :cond_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 457
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->refresh()V

    .line 458
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->getCachedIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 465
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveIdentityId(Ljava/lang/String;)V

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .line 641
    sget-object v0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->USER_AGENT:Ljava/lang/String;

    return-object v0
.end method

.method loadCachedCredentials()V
    .locals 5

    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "Loading credentials from SharedPreferences"

    .line 592
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "expirationDate"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 595
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "accessKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 596
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "secretKey"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    .line 597
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "sessionToken"

    invoke-direct {p0, v3}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "accessKey"

    invoke-direct {p0, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "secretKey"

    invoke-direct {p0, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    iget-object v2, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "sessionToken"

    invoke-direct {p0, v4}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->namespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    new-instance v3, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    return-void

    :cond_1
    :goto_0
    const-string v0, "CognitoCachingCredentialsProvider"

    const-string v1, "No valid credentials found in SharedPreferences"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-object v3, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    return-void
.end method

.method public refresh()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 514
    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->refresh()V

    .line 517
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentials:Lcom/amazonaws/auth/AWSSessionCredentials;

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->sessionCredentialsExpiration:Ljava/util/Date;

    .line 519
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 518
    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->saveCredentials(Lcom/amazonaws/auth/AWSSessionCredentials;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public setLogins(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 530
    :try_start_0
    invoke-super {p0, p1}, Lcom/amazonaws/auth/CognitoCredentialsProvider;->setLogins(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 532
    iput-boolean p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->needIdentityRefresh:Z

    .line 534
    invoke-virtual {p0}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->clearCredentials()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iget-object p1, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->credentialsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method
