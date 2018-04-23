.class final synthetic Lcom/intermedia/view/QuestionView$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/intermedia/view/QuestionView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/QuestionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/view/QuestionView$$Lambda$0;->arg$1:Lcom/intermedia/view/QuestionView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intermedia/view/QuestionView$$Lambda$0;->arg$1:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v0, p1}, Lcom/intermedia/view/QuestionView;->lambda$initializeAnswerButtons$0$QuestionView(Landroid/view/View;)V

    return-void
.end method
