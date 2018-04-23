.class final synthetic Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final arg$1:Lcom/intermedia/initializers/TrueTimeInitializer;


# direct methods
.method constructor <init>(Lcom/intermedia/initializers/TrueTimeInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$1;->arg$1:Lcom/intermedia/initializers/TrueTimeInitializer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/initializers/TrueTimeInitializer$$Lambda$1;->arg$1:Lcom/intermedia/initializers/TrueTimeInitializer;

    invoke-virtual {v0}, Lcom/intermedia/initializers/TrueTimeInitializer;->lambda$run$1$TrueTimeInitializer()V

    return-void
.end method
