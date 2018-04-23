.class final synthetic Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# instance fields
.field private final arg$1:Lcom/intermedia/initializers/TrueTimeInitializer;


# direct methods
.method constructor <init>(Lcom/intermedia/initializers/TrueTimeInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$0;->arg$1:Lcom/intermedia/initializers/TrueTimeInitializer;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$0;->arg$1:Lcom/intermedia/initializers/TrueTimeInitializer;

    invoke-virtual {v0, p1}, Lcom/intermedia/initializers/TrueTimeInitializer;->lambda$run$0$TrueTimeInitializer(Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
