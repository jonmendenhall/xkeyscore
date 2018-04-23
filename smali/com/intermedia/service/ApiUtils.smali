.class public Lcom/intermedia/service/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/service/ApiUtils$APIResponseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiUtils"

.field private static mInstance:Lcom/intermedia/service/ApiUtils;


# instance fields
.field private final apiUrlSupplier:Lcom/intermedia/network/ApiUrlSupplier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private sessionManager:Lcom/intermedia/user/session/SessionManager;

.field sharedPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/intermedia/ApplicationComponent;->inject(Lcom/intermedia/service/ApiUtils;)V

    .line 65
    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 67
    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 68
    new-instance p1, Lcom/intermedia/network/ApiUrlSupplier;

    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/intermedia/network/ApiUrlSupplier;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/intermedia/service/ApiUtils;->apiUrlSupplier:Lcom/intermedia/network/ApiUrlSupplier;

    return-void
.end method

.method private createRequest(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/intermedia/service/ModelRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "TT;>;)",
            "Lcom/intermedia/service/ModelRequest<",
            "TT;>;"
        }
    .end annotation

    .line 96
    new-instance v7, Lcom/intermedia/service/ModelRequest;

    invoke-direct {p0, p2}, Lcom/intermedia/service/ApiUtils;->getEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/intermedia/service/ApiUtils$$Lambda$0;->get$Lambda(Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/intermedia/service/ApiUtils$$Lambda$1;->get$Lambda(Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v0, v7

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/intermedia/service/ModelRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v7
.end method

.method private enqueueAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V
    .locals 4
    .param p1    # Lcom/intermedia/service/JSONRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/intermedia/user/UserRepository;

    iget-object v2, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/intermedia/service/ApiUtils;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-direct {v1, v2, v3}, Lcom/intermedia/user/UserRepository;-><init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;)V

    .line 85
    invoke-virtual {v1}, Lcom/intermedia/user/UserRepository;->getSegmentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/intermedia/service/JSONRequest;->setSegmentToken(Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Lcom/intermedia/util/Asserts;->isNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v0}, Lcom/intermedia/service/JSONRequest;->setAccessToken(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/intermedia/service/ApiUtils;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private enqueueNonAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V
    .locals 1
    .param p1    # Lcom/intermedia/service/JSONRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Lcom/intermedia/service/ApiUtils;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private getEndpointURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 102
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/intermedia/service/ApiUtils;->apiUrlSupplier:Lcom/intermedia/network/ApiUrlSupplier;

    invoke-virtual {v1}, Lcom/intermedia/network/ApiUrlSupplier;->get()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    sget-object v0, Lcom/intermedia/service/ApiUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get endpoint URL failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/intermedia/service/ApiUtils;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/intermedia/service/ApiUtils;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/intermedia/service/ApiUtils;->mInstance:Lcom/intermedia/service/ApiUtils;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/intermedia/service/ApiUtils;

    invoke-direct {v1, p0}, Lcom/intermedia/service/ApiUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/intermedia/service/ApiUtils;->mInstance:Lcom/intermedia/service/ApiUtils;

    .line 55
    :cond_0
    sget-object p0, Lcom/intermedia/service/ApiUtils;->mInstance:Lcom/intermedia/service/ApiUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    throw p0
.end method

.method private getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static final synthetic lambda$checkUIDAvailable$1$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 136
    sget-object v0, Lcom/intermedia/service/ApiUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check UID available failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {p0, p1}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static final synthetic lambda$getPayouts$4$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lorg/json/JSONObject;)V
    .locals 1

    .line 227
    :try_start_0
    new-instance v0, Lcom/intermedia/model/method/PayoutStatus;

    invoke-direct {v0, p1}, Lcom/intermedia/model/method/PayoutStatus;-><init>(Lorg/json/JSONObject;)V

    .line 228
    invoke-interface {p0, v0}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static final synthetic lambda$payout$3$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lorg/json/JSONObject;)V
    .locals 1

    .line 212
    :try_start_0
    new-instance v0, Lcom/intermedia/model/Payout;

    invoke-direct {v0, p1}, Lcom/intermedia/model/Payout;-><init>(Lorg/json/JSONObject;)V

    .line 213
    invoke-interface {p0, v0}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static final synthetic lambda$submitTrivia$2$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lorg/json/JSONObject;)V
    .locals 0

    const/4 p1, 0x1

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public authenticateUser(Ljava/lang/String;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "Lcom/intermedia/model/Account;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f11014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f110075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    .line 154
    const-class v4, Lcom/intermedia/model/Account;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/ApiUtils;->createRequest(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/intermedia/service/ModelRequest;

    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Lcom/intermedia/service/ApiUtils;->enqueueNonAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V

    return-void
.end method

.method public checkUIDAvailable(Ljava/lang/String;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 113
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f11014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f11019c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v6, Lcom/intermedia/service/JSONRequest;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/intermedia/service/ApiUtils;->getEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/intermedia/service/ApiUtils$$Lambda$2;

    invoke-direct {v4, p0, p2}, Lcom/intermedia/service/ApiUtils$$Lambda$2;-><init>(Lcom/intermedia/service/ApiUtils;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    new-instance v5, Lcom/intermedia/service/ApiUtils$$Lambda$3;

    invoke-direct {v5, p2}, Lcom/intermedia/service/ApiUtils$$Lambda$3;-><init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 140
    invoke-direct {p0, v6}, Lcom/intermedia/service/ApiUtils;->enqueueNonAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V

    return-void
.end method

.method public fetchShowTypes(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "Lcom/intermedia/model/ShowType;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f110180

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    const-class v6, Lcom/intermedia/model/ShowType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/intermedia/service/ApiUtils;->createRequest(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/intermedia/service/ModelRequest;

    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Lcom/intermedia/service/ApiUtils;->enqueueAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V

    return-void
.end method

.method public getPayouts(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "Lcom/intermedia/model/method/PayoutStatus;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f11019e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v7, Lcom/intermedia/service/JSONRequest;

    invoke-direct {p0, v0}, Lcom/intermedia/service/ApiUtils;->getEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/intermedia/service/ApiUtils$$Lambda$8;

    invoke-direct {v5, p1}, Lcom/intermedia/service/ApiUtils$$Lambda$8;-><init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/intermedia/service/ApiUtils$$Lambda$9;->get$Lambda(Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 235
    invoke-direct {p0, v7}, Lcom/intermedia/service/ApiUtils;->enqueueAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V

    return-void
.end method

.method final synthetic lambda$checkUIDAvailable$0$ApiUtils(Lcom/intermedia/service/ApiUtils$APIResponseListener;Lorg/json/JSONObject;)V
    .locals 2

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f11014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 128
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 130
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/intermedia/service/ApiUtils$APIResponseListener;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lcom/intermedia/service/ApiUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check UID available failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public payout(Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "Lcom/intermedia/model/Payout;",
            ">;)V"
        }
    .end annotation

    .line 199
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f110150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f110149

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    iget-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const p2, 0x7f11019e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance p2, Lcom/intermedia/service/JSONRequest;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/intermedia/service/ApiUtils;->getEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/intermedia/service/ApiUtils$$Lambda$6;

    invoke-direct {v4, p3}, Lcom/intermedia/service/ApiUtils$$Lambda$6;-><init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/intermedia/service/ApiUtils$$Lambda$7;->get$Lambda(Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 220
    invoke-direct {p0, p2}, Lcom/intermedia/service/ApiUtils;->enqueueAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V

    return-void

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public setCurrentTypeChannel(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "api_channel"

    .line 74
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public submitTrivia(Lcom/intermedia/model/Trivia;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intermedia/model/Trivia;",
            "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f110145

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getAnswer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    iget-object v1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f110148

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    iget-object v4, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getOptionB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object v4, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 175
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 176
    iget-object v6, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getOptionC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object v2, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 180
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 182
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 184
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f11014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v0, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f110147

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intermedia/model/Trivia;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    iget-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f110146

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    iget-object p1, p0, Lcom/intermedia/service/ApiUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f1101a0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v0, Lcom/intermedia/service/JSONRequest;

    invoke-direct {p0, p1}, Lcom/intermedia/service/ApiUtils;->getEndpointURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/intermedia/service/ApiUtils$$Lambda$4;

    invoke-direct {v9, p2}, Lcom/intermedia/service/ApiUtils$$Lambda$4;-><init>(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/intermedia/service/ApiUtils$$Lambda$5;->get$Lambda(Lcom/intermedia/service/ApiUtils$APIResponseListener;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v10

    const/4 v6, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/intermedia/service/ApiUtils;->enqueueAuthenticatedRequest(Lcom/intermedia/service/JSONRequest;)V

    return-void
.end method
