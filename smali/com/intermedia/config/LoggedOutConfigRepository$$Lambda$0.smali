.class final synthetic Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/MaybeOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/config/LoggedOutConfigRepository;


# direct methods
.method constructor <init>(Lcom/intermedia/config/LoggedOutConfigRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$0;->arg$1:Lcom/intermedia/config/LoggedOutConfigRepository;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/MaybeEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/config/LoggedOutConfigRepository$$Lambda$0;->arg$1:Lcom/intermedia/config/LoggedOutConfigRepository;

    invoke-virtual {v0, p1}, Lcom/intermedia/config/LoggedOutConfigRepository;->lambda$new$0$LoggedOutConfigRepository(Lio/reactivex/MaybeEmitter;)V

    return-void
.end method
