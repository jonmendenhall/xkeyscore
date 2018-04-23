.class final synthetic Lcom/intermedia/MainActivity$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/MainActivity;

.field private final arg$2:Lcom/intermedia/model/Broadcast;


# direct methods
.method constructor <init>(Lcom/intermedia/MainActivity;Lcom/intermedia/model/Broadcast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/MainActivity$$Lambda$11;->arg$1:Lcom/intermedia/MainActivity;

    iput-object p2, p0, Lcom/intermedia/MainActivity$$Lambda$11;->arg$2:Lcom/intermedia/model/Broadcast;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/MainActivity$$Lambda$11;->arg$1:Lcom/intermedia/MainActivity;

    iget-object v1, p0, Lcom/intermedia/MainActivity$$Lambda$11;->arg$2:Lcom/intermedia/model/Broadcast;

    check-cast p1, Lcom/intermedia/model/config/Config;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/MainActivity;->lambda$watchLiveGame$12$MainActivity(Lcom/intermedia/model/Broadcast;Lcom/intermedia/model/config/Config;)V

    return-void
.end method
