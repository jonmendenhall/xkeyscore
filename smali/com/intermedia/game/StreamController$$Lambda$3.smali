.class final synthetic Lcom/intermedia/game/StreamController$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/intermedia/game/StreamController;

.field private final arg$2:I


# direct methods
.method constructor <init>(Lcom/intermedia/game/StreamController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/StreamController$$Lambda$3;->arg$1:Lcom/intermedia/game/StreamController;

    iput p2, p0, Lcom/intermedia/game/StreamController$$Lambda$3;->arg$2:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/game/StreamController$$Lambda$3;->arg$1:Lcom/intermedia/game/StreamController;

    iget v1, p0, Lcom/intermedia/game/StreamController$$Lambda$3;->arg$2:I

    check-cast p1, Lcom/intermedia/model/config/Config;

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/game/StreamController;->lambda$null$2$StreamController(ILcom/intermedia/model/config/Config;)V

    return-void
.end method
