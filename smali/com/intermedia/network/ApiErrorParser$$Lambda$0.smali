.class final synthetic Lcom/intermedia/network/ApiErrorParser$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/network/ApiErrorParser;

.field private final arg$2:Lretrofit2/Response;


# direct methods
.method constructor <init>(Lcom/intermedia/network/ApiErrorParser;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/network/ApiErrorParser$$Lambda$0;->arg$1:Lcom/intermedia/network/ApiErrorParser;

    iput-object p2, p0, Lcom/intermedia/network/ApiErrorParser$$Lambda$0;->arg$2:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/MaybeEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/network/ApiErrorParser$$Lambda$0;->arg$1:Lcom/intermedia/network/ApiErrorParser;

    iget-object v1, p0, Lcom/intermedia/network/ApiErrorParser$$Lambda$0;->arg$2:Lretrofit2/Response;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/network/ApiErrorParser;->lambda$parse$0$ApiErrorParser(Lretrofit2/Response;Lio/reactivex/MaybeEmitter;)V

    return-void
.end method
