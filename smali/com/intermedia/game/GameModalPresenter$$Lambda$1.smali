.class final synthetic Lcom/intermedia/game/GameModalPresenter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/game/GameModalPresenter;

.field private final arg$2:Lcom/intermedia/model/HQQuestionResult;

.field private final arg$3:I


# direct methods
.method constructor <init>(Lcom/intermedia/game/GameModalPresenter;Lcom/intermedia/model/HQQuestionResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;->arg$1:Lcom/intermedia/game/GameModalPresenter;

    iput-object p2, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;->arg$2:Lcom/intermedia/model/HQQuestionResult;

    iput p3, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;->arg$3:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;->arg$1:Lcom/intermedia/game/GameModalPresenter;

    iget-object v1, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;->arg$2:Lcom/intermedia/model/HQQuestionResult;

    iget v2, p0, Lcom/intermedia/game/GameModalPresenter$$Lambda$1;->arg$3:I

    invoke-virtual {v0, v1, v2}, Lcom/intermedia/game/GameModalPresenter;->lambda$showExtraLifeOptInModal$1$GameModalPresenter(Lcom/intermedia/model/HQQuestionResult;I)V

    return-void
.end method
