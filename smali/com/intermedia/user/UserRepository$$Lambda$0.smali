.class final synthetic Lcom/intermedia/user/UserRepository$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/user/UserRepository;


# direct methods
.method constructor <init>(Lcom/intermedia/user/UserRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/user/UserRepository$$Lambda$0;->arg$1:Lcom/intermedia/user/UserRepository;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/MaybeEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/user/UserRepository$$Lambda$0;->arg$1:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0, p1}, Lcom/intermedia/user/UserRepository;->lambda$new$0$UserRepository(Lio/reactivex/MaybeEmitter;)V

    return-void
.end method
