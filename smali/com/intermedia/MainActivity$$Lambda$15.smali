.class final synthetic Lcom/intermedia/MainActivity$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/MainActivity;

.field private final arg$2:Lcom/intermedia/model/HQUser;


# direct methods
.method constructor <init>(Lcom/intermedia/MainActivity;Lcom/intermedia/model/HQUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/MainActivity$$Lambda$15;->arg$1:Lcom/intermedia/MainActivity;

    iput-object p2, p0, Lcom/intermedia/MainActivity$$Lambda$15;->arg$2:Lcom/intermedia/model/HQUser;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/MainActivity$$Lambda$15;->arg$1:Lcom/intermedia/MainActivity;

    iget-object v1, p0, Lcom/intermedia/MainActivity$$Lambda$15;->arg$2:Lcom/intermedia/model/HQUser;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/MainActivity;->lambda$null$9$MainActivity(Lcom/intermedia/model/HQUser;Ljava/lang/Throwable;)V

    return-void
.end method
