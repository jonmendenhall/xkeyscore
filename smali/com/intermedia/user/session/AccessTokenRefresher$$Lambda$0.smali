.class final synthetic Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/user/session/AccessTokenRefresher;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/user/session/AccessTokenRefresher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;->arg$1:Lcom/intermedia/user/session/AccessTokenRefresher;

    iput-object p2, p0, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;->arg$1:Lcom/intermedia/user/session/AccessTokenRefresher;

    iget-object v1, p0, Lcom/intermedia/user/session/AccessTokenRefresher$$Lambda$0;->arg$2:Ljava/lang/String;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/user/session/AccessTokenRefresher;->lambda$refresh$2$AccessTokenRefresher(Ljava/lang/String;Lretrofit2/Response;)V

    return-void
.end method
