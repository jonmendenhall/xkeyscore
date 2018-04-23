.class final synthetic Lcom/intermedia/injection/HttpModule$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final arg$1:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/injection/HttpModule$$Lambda$0;->arg$1:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/injection/HttpModule$$Lambda$0;->arg$1:Ljava/util/Locale;

    invoke-static {v0, p1}, Lcom/intermedia/injection/HttpModule;->lambda$provideBaseOkHttpClientBuilder$0$HttpModule(Ljava/util/Locale;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
