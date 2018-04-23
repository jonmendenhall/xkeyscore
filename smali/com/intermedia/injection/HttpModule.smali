.class public final Lcom/intermedia/injection/HttpModule;
.super Ljava/lang/Object;
.source "HttpModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$provideBaseOkHttpClientBuilder$0$HttpModule(Ljava/util/Locale;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "x-hq-client"

    const-string v2, "Android/1.7.0"

    .line 56
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "x-hq-country"

    .line 57
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "x-hq-lang"

    .line 58
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 60
    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method provideBaseOkHttpClientBuilder(Landroid/content/Context;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "Base"
    .end annotation

    .line 53
    invoke-static {p1}, Lcom/intermedia/util/LocaleUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    .line 54
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/intermedia/injection/HttpModule$$Lambda$0;

    invoke-direct {v1, p1}, Lcom/intermedia/injection/HttpModule$$Lambda$0;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method

.method provideBaseRetrofitBuilder(Lcom/google/gson/Gson;Lokhttp3/OkHttpClient$Builder;)Lretrofit2/Retrofit$Builder;
    .locals 1
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 37
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 38
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->createAsync()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    return-object p1
.end method

.method provideLoggedOutApiService(Lretrofit2/Retrofit$Builder;Lcom/intermedia/network/ApiUrlSupplier;)Lcom/intermedia/network/LoggedOutApiService;
    .locals 0
    .param p1    # Lretrofit2/Retrofit$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/network/ApiUrlSupplier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 31
    invoke-virtual {p2}, Lcom/intermedia/network/ApiUrlSupplier;->get()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-class p2, Lcom/intermedia/network/LoggedOutApiService;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/network/LoggedOutApiService;

    return-object p1
.end method

.method providePicassoBuilder(Landroid/content/Context;Lokhttp3/OkHttpClient$Builder;)Lcom/squareup/picasso/Picasso;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation runtime Ljavax/inject/Named;
            value = "WithStetho"
        .end annotation
    .end param
    .annotation runtime Lcom/intermedia/injection/ApplicationScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 46
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/jakewharton/picasso/OkHttp3Downloader;

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jakewharton/picasso/OkHttp3Downloader;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    return-object p1
.end method
