.class final synthetic Lcom/intermedia/game/GameModalPresenter$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/game/GameModalPresenter;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/game/GameModalPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$2;->arg$1:Lcom/intermedia/game/GameModalPresenter;

    iput-object p2, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$2;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$2;->arg$1:Lcom/intermedia/game/GameModalPresenter;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$2;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/intermedia/game/GameModalPresenter;->lambda$showYouWonModal$2$GameModalPresenter(Ljava/lang/String;)V

    return-void
.end method
