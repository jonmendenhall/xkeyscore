.class final synthetic Lcom/intermedia/user/StkHeaderInterceptor$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lokhttp3/Request$Builder;


# direct methods
.method constructor <init>(Lokhttp3/Request$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/StkHeaderInterceptor$$Lambda$0;->arg$1:Lokhttp3/Request$Builder;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/user/StkHeaderInterceptor$$Lambda$0;->arg$1:Lokhttp3/Request$Builder;

    check-cast p1, Lcom/intermedia/model/HQUser;

    invoke-static {v0, p1}, Lcom/intermedia/user/StkHeaderInterceptor;->lambda$intercept$0$StkHeaderInterceptor(Lokhttp3/Request$Builder;Lcom/intermedia/model/HQUser;)V

    return-void
.end method
