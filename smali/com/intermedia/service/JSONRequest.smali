.class public Lcom/intermedia/service/JSONRequest;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "JSONRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/service/JSONRequest$JsonRequestException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JSONRequest"

.field static final onErrorFallback:Lcom/android/volley/Response$ErrorListener;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private segmentToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/intermedia/service/JSONRequest$$Lambda$1;->$instance:Lcom/android/volley/Response$ErrorListener;

    sput-object v0, Lcom/intermedia/service/JSONRequest;->onErrorFallback:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 58
    sget-object v5, Lcom/intermedia/service/JSONRequest;->onErrorFallback:Lcom/android/volley/Response$ErrorListener;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v4, Lcom/intermedia/service/JSONRequest$$Lambda$0;

    invoke-direct {v4, p5, p4}, Lcom/intermedia/service/JSONRequest$$Lambda$0;-><init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method static final synthetic lambda$new$1$JSONRequest(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "error"

    .line 40
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string p1, "error"

    .line 42
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/android/volley/VolleyError;

    invoke-direct {p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {p0, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Lcom/android/volley/VolleyError;

    invoke-direct {p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 48
    sget-object v0, Lcom/intermedia/service/JSONRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON request failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static final synthetic lambda$static$0$JSONRequest(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/intermedia/service/JSONRequest;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-hq-client"

    const-string v2, "Android/1.7.0"

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-hq-test-key"

    const-string v2, ""

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/intermedia/service/JSONRequest;->segmentToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "x-hq-stk"

    .line 99
    iget-object v2, p0, Lcom/intermedia/service/JSONRequest;->segmentToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/intermedia/service/JSONRequest;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Authorization"

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 85
    :try_start_0
    iget-object v1, v0, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "status_code"

    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p1

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/service/JSONRequest$JsonRequestException;

    const-string v3, "Error parsing status code from response"

    invoke-direct {v2, p0, v3}, Lcom/intermedia/service/JSONRequest$JsonRequestException;-><init>(Lcom/intermedia/service/JSONRequest;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :goto_0
    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/intermedia/service/JSONRequest;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setSegmentToken(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/intermedia/service/JSONRequest;->segmentToken:Ljava/lang/String;

    return-void
.end method
