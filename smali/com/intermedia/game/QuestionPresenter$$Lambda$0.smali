.class final synthetic Lcom/intermedia/game/QuestionPresenter$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intermedia/view/QuestionView$QuestionViewListener;


# instance fields
.field private final arg$1:Lcom/intermedia/game/QuestionPresenter;


# direct methods
.method constructor <init>(Lcom/intermedia/game/QuestionPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/game/QuestionPresenter$$Lambda$0;->arg$1:Lcom/intermedia/game/QuestionPresenter;

    return-void
.end method


# virtual methods
.method public onAnswerClick(Lcom/intermedia/model/HQAnswer;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/game/QuestionPresenter$$Lambda$0;->arg$1:Lcom/intermedia/game/QuestionPresenter;

    invoke-virtual {v0, p1}, Lcom/intermedia/game/QuestionPresenter;->lambda$configure$0$QuestionPresenter(Lcom/intermedia/model/HQAnswer;)V

    return-void
.end method
