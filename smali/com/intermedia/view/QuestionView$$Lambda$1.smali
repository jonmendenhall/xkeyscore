.class final synthetic Lcom/intermedia/view/QuestionView$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/view/QuestionView;

.field private final arg$2:Landroid/widget/Button;

.field private final arg$3:Lcom/intermedia/model/HQAnswer;


# direct methods
.method constructor <init>(Lcom/intermedia/view/QuestionView;Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/QuestionView$$Lambda$1;->arg$1:Lcom/intermedia/view/QuestionView;

    iput-object p2, p0, Lcom/intermedia/view/QuestionView$$Lambda$1;->arg$2:Landroid/widget/Button;

    iput-object p3, p0, Lcom/intermedia/view/QuestionView$$Lambda$1;->arg$3:Lcom/intermedia/model/HQAnswer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/intermedia/view/QuestionView$$Lambda$1;->arg$1:Lcom/intermedia/view/QuestionView;

    iget-object v1, p0, Lcom/intermedia/view/QuestionView$$Lambda$1;->arg$2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/intermedia/view/QuestionView$$Lambda$1;->arg$3:Lcom/intermedia/model/HQAnswer;

    invoke-virtual {v0, v1, v2, p1}, Lcom/intermedia/view/QuestionView;->lambda$initializeAnswerButtons$1$QuestionView(Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;Landroid/view/View;)V

    return-void
.end method
