.class final synthetic Lcom/intermedia/injection/UserModule$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final arg$1:Lcom/intermedia/user/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/intermedia/user/session/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/injection/UserModule$$Lambda$0;->arg$1:Lcom/intermedia/user/session/SessionManager;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/intermedia/injection/UserModule$$Lambda$0;->arg$1:Lcom/intermedia/user/session/SessionManager;

    invoke-static {v0, p1}, Lcom/intermedia/injection/UserModule;->lambda$provideAuthenticatedApiService$0$UserModule(Lcom/intermedia/user/session/SessionManager;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
