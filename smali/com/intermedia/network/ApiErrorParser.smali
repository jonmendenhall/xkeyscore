.class public Lcom/intermedia/network/ApiErrorParser;
.super Ljava/lang/Object;
.source "ApiErrorParser.java"


# annotations
.annotation runtime Lcom/intermedia/injection/ApplicationScope;
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/intermedia/network/ApiErrorParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method final synthetic lambda$parse$0$ApiErrorParser(Lretrofit2/Response;Lio/reactivex/MaybeEmitter;)V
    .locals 4
    .param p1    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/intermedia/network/ApiErrorParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object p1

    const-class v1, Lcom/intermedia/model/ApiError;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p2}, Lio/reactivex/MaybeEmitter;->onComplete()V

    :catch_0
    :goto_1
    return-void
.end method

.method public parse(Lretrofit2/Response;)Lio/reactivex/Maybe;
    .locals 1
    .param p1    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lio/reactivex/Maybe<",
            "Lcom/intermedia/model/ApiError;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/intermedia/network/ApiErrorParser$$Lambda$0;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/network/ApiErrorParser$$Lambda$0;-><init>(Lcom/intermedia/network/ApiErrorParser;Lretrofit2/Response;)V

    invoke-static {v0}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 43
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 44
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
