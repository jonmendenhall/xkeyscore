.class final synthetic Lcom/intermedia/game/GameModalPresenter$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/game/GameModalPresenter;

.field private final arg$2:Lcom/intermedia/model/HQQuestionResult;


# direct methods
.method constructor <init>(Lcom/intermedia/game/GameModalPresenter;Lcom/intermedia/model/HQQuestionResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$0;->arg$1:Lcom/intermedia/game/GameModalPresenter;

    iput-object p2, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$0;->arg$2:Lcom/intermedia/model/HQQuestionResult;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$0;->arg$1:Lcom/intermedia/game/GameModalPresenter;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$0;->arg$2:Lcom/intermedia/model/HQQuestionResult;

    invoke-virtual {v0, v1}, Lcom/intermedia/game/GameModalPresenter;->lambda$showEliminatedModal$0$GameModalPresenter(Lcom/intermedia/model/HQQuestionResult;)V

    return-void
.end method
