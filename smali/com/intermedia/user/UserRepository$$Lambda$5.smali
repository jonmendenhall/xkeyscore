.class final synthetic Lcom/intermedia/user/UserRepository$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final arg$1:Lcom/intermedia/user/UserRepository;

.field private final arg$2:Lcom/intermedia/model/HQUser;


# direct methods
.method constructor <init>(Lcom/intermedia/user/UserRepository;Lcom/intermedia/model/HQUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/UserRepository$$Lambda$5;->arg$1:Lcom/intermedia/user/UserRepository;

    iput-object p2, p0, Lcom/intermedia/user/UserRepository$$Lambda$5;->arg$2:Lcom/intermedia/model/HQUser;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/user/UserRepository$$Lambda$5;->arg$1:Lcom/intermedia/user/UserRepository;

    iget-object v1, p0, Lcom/intermedia/user/UserRepository$$Lambda$5;->arg$2:Lcom/intermedia/model/HQUser;

    invoke-virtual {v0, v1}, Lcom/intermedia/user/UserRepository;->lambda$saveUser$3$UserRepository(Lcom/intermedia/model/HQUser;)V

    return-void
.end method
