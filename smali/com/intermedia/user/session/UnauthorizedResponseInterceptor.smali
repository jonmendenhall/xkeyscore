.class public Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;
.super Ljava/lang/Object;
.source "UnauthorizedResponseInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation


# instance fields
.field private final accessTokenRefresher:Lcom/intermedia/user/session/AccessTokenRefresher;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/user/session/AccessTokenRefresher;)V
    .locals 0
    .param p1    # Lcom/intermedia/user/session/AccessTokenRefresher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;->accessTokenRefresher:Lcom/intermedia/user/session/AccessTokenRefresher;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/intermedia/user/session/UnauthorizedResponseInterceptor;->accessTokenRefresher:Lcom/intermedia/user/session/AccessTokenRefresher;

    invoke-virtual {v0}, Lcom/intermedia/user/session/AccessTokenRefresher;->refresh()V

    :cond_0
    return-object p1
.end method
