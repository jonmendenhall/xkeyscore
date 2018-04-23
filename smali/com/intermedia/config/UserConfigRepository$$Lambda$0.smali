.class final synthetic Lcom/intermedia/config/UserConfigRepository$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/config/UserConfigRepository;


# direct methods
.method constructor <init>(Lcom/intermedia/config/UserConfigRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/config/UserConfigRepository$$Lambda$0;->arg$1:Lcom/intermedia/config/UserConfigRepository;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/config/UserConfigRepository$$Lambda$0;->arg$1:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0, p1}, Lcom/intermedia/config/UserConfigRepository;->lambda$new$0$UserConfigRepository(Lio/reactivex/SingleEmitter;)V

    return-void
.end method
