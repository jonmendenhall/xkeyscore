.class public final Lcom/intermedia/user/StkHeaderInterceptor;
.super Ljava/lang/Object;
.source "StkHeaderInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation


# instance fields
.field private final userRepository:Lcom/intermedia/user/UserRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/user/UserRepository;)V
    .locals 0
    .param p1    # Lcom/intermedia/user/UserRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/user/StkHeaderInterceptor;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method

.method static final synthetic lambda$intercept$0$StkHeaderInterceptor(Lokhttp3/Request$Builder;Lcom/intermedia/model/HQUser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "x-hq-stk"

    .line 30
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->stk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/intermedia/user/StkHeaderInterceptor;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/user/StkHeaderInterceptor$$Lambda$0;

    invoke-direct {v2, v0}, Lcom/intermedia/user/StkHeaderInterceptor$$Lambda$0;-><init>(Lokhttp3/Request$Builder;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 31
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
