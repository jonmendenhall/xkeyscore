.class final synthetic Lcom/intermedia/service/JSONRequest$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# static fields
.field static final $instance:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/intermedia/service/JSONRequest$$Lambda$1;

    invoke-direct {v0}, Lcom/intermedia/service/JSONRequest$$Lambda$1;-><init>()V

    sput-object v0, Lcom/intermedia/service/JSONRequest$$Lambda$1;->$instance:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p1}, Lcom/intermedia/service/JSONRequest;->lambda$static$0$JSONRequest(Lcom/android/volley/VolleyError;)V

    return-void
.end method
