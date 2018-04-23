.class public final Lcom/intermedia/view/ExtraLifeOptInModalView;
.super Lcom/intermedia/view/HQModalView;
.source "ExtraLifeOptInModalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;
    }
.end annotation


# instance fields
.field private final countDownTimer:Landroid/os/CountDownTimer;

.field private final delegate:Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;

.field private final modalDurationMs:I

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00b3
    .end annotation
.end field

.field private final questionResult:Lcom/intermedia/model/HQQuestionResult;

.field public useExtraLifeButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e3
    .end annotation
.end field

.field private usedExtraLife:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;Lcom/intermedia/model/HQQuestionResult;Landroid/widget/ImageView;I)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0c0063

    .line 41
    invoke-direct {p0, p1, v0, p4}, Lcom/intermedia/view/HQModalView;-><init>(Landroid/app/Activity;ILandroid/widget/ImageView;)V

    .line 43
    iput-object p2, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->delegate:Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;

    .line 44
    iput-object p3, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->questionResult:Lcom/intermedia/model/HQQuestionResult;

    .line 45
    iput p5, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->modalDurationMs:I

    .line 46
    new-instance p2, Lcom/intermedia/view/ExtraLifeOptInModalView$1;

    int-to-long p3, p5

    const-wide/16 v5, 0x1f4

    move-object v1, p2

    move-object v2, p0

    move-wide v3, p3

    move-object v7, p1

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/intermedia/view/ExtraLifeOptInModalView$1;-><init>(Lcom/intermedia/view/ExtraLifeOptInModalView;JJLandroid/app/Activity;I)V

    iput-object p2, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 64
    iget-object p1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->progressBar:Landroid/widget/ProgressBar;

    const-string p2, "progress"

    const/4 p5, 0x2

    new-array p5, p5, [I

    const/4 v0, 0x0

    aput v0, p5, v0

    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->progressBar:Landroid/widget/ProgressBar;

    .line 65
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    .line 64
    invoke-static {p1, p2, p5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    iget-object p2, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 69
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/view/ExtraLifeOptInModalView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/intermedia/view/ExtraLifeOptInModalView;->useExtraLife()V

    return-void
.end method

.method private useExtraLife()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->useExtraLifeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->delegate:Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;

    iget-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->questionResult:Lcom/intermedia/model/HQQuestionResult;

    invoke-interface {v0, v1}, Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;->notifyPresenterUseExtraLife(Lcom/intermedia/model/HQQuestionResult;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->usedExtraLife:Z

    .line 96
    invoke-virtual {p0}, Lcom/intermedia/view/ExtraLifeOptInModalView;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0a0116,
            0x7f0a0127
        }
    .end annotation

    .line 85
    invoke-super {p0}, Lcom/intermedia/view/HQModalView;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 87
    iget-boolean v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->usedExtraLife:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->delegate:Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;

    iget-object v1, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->questionResult:Lcom/intermedia/model/HQQuestionResult;

    invoke-interface {v0, v1}, Lcom/intermedia/view/ExtraLifeOptInModalView$Delegate;->notifyPresenterEliminated(Lcom/intermedia/model/HQQuestionResult;)V

    :cond_0
    return-void
.end method

.method useExtraLifeButtonClicked()V
    .locals 8
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0a01e3
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/intermedia/view/ExtraLifeOptInModalView;->useExtraLife()V

    .line 76
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "extraLife_optedIn"

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "type"

    const-string v5, "button"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/util/Pair;

    const-string v4, "duration"

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v6, p0, Lcom/intermedia/view/ExtraLifeOptInModalView;->modalDurationMs:I

    int-to-long v6, v6

    .line 79
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method
