.class final Lcom/intermedia/ExternalApplicationModule;
.super Ljava/lang/Object;
.source "ExternalApplicationModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/intermedia/injection/ApplicationModule;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideOkHttpClientBuilder(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation runtime Ljavax/inject/Named;
            value = "Base"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideOkHttpClientBuilderWithStetho(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation runtime Ljavax/inject/Named;
            value = "Base"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "WithStetho"
    .end annotation

    return-object p1
.end method
