.class public Lcom/intermedia/service/ModelRequest;
.super Lcom/intermedia/service/JSONRequest;
.source "ModelRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/intermedia/service/JSONRequest;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/intermedia/libs/AutoParcelAdapterFactory;

    invoke-direct {v1}, Lcom/intermedia/libs/AutoParcelAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/intermedia/service/ModelRequest;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/ModelRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
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

    move-object v6, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/intermedia/service/ModelRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    sget-object v6, Lcom/intermedia/service/ModelRequest;->onErrorFallback:Lcom/android/volley/Response$ErrorListener;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/intermedia/service/ModelRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 20
    new-instance v4, Lcom/intermedia/service/ModelRequest$$Lambda$0;

    invoke-direct {v4, p4, p5}, Lcom/intermedia/service/ModelRequest$$Lambda$0;-><init>(Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/service/JSONRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method static final synthetic lambda$new$0$ModelRequest(Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/intermedia/service/ModelRequest;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 22
    invoke-interface {p1, p0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
