.class final synthetic Lcom/intermedia/config/UserConfigRepository$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/config/UserConfigRepository;


# direct methods
.method constructor <init>(Lcom/intermedia/config/UserConfigRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/config/UserConfigRepository$$Lambda$2;->arg$1:Lcom/intermedia/config/UserConfigRepository;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository$$Lambda$2;->arg$1:Lcom/intermedia/config/UserConfigRepository;

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {v0, p1}, Lcom/intermedia/config/UserConfigRepository;->lambda$fetch$3$UserConfigRepository(Lretrofit2/Response;)V

    return-void
.end method
