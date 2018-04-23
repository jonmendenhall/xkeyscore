.class Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "QuestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/view/QuestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressCountDownTimer"
.end annotation


# instance fields
.field private duration:J

.field final synthetic this$0:Lcom/intermedia/view/QuestionView;


# direct methods
.method constructor <init>(Lcom/intermedia/view/QuestionView;JJ)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    .line 100
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 101
    iput-wide p2, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->duration:J

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    invoke-virtual {v0}, Lcom/intermedia/view/QuestionView;->endQuestion()V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    iget-object v0, v0, Lcom/intermedia/view/QuestionView;->countdownProgressBar:Lcom/intermedia/view/ProgressBarView;

    iget-wide v1, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->duration:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/intermedia/view/ProgressBarView;->setProgress(I)V

    const-wide/16 v0, 0x3e8

    .line 107
    div-long/2addr p1, v0

    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    iget v0, v0, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    iget v0, v0, Lcom/intermedia/view/QuestionView;->correctGreenColor:I

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    iget-object v1, v1, Lcom/intermedia/view/QuestionView;->countdownProgressBar:Lcom/intermedia/view/ProgressBarView;

    invoke-virtual {v1}, Lcom/intermedia/view/ProgressBarView;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    iget-object v0, p0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->this$0:Lcom/intermedia/view/QuestionView;

    iget-object v0, v0, Lcom/intermedia/view/QuestionView;->countdownTimeTextView:Landroid/widget/TextView;

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
