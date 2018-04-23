.class public Lcom/intermedia/view/QuestionView;
.super Landroid/widget/FrameLayout;
.source "QuestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;,
        Lcom/intermedia/view/QuestionView$QuestionViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuestionView"


# instance fields
.field answerButtonContainer:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0027
    .end annotation
.end field

.field answerButtonOne:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0028
    .end annotation
.end field

.field answerButtonThree:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0029
    .end annotation
.end field

.field answerButtonTwo:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a002a
    .end annotation
.end field

.field private answerButtons:[Landroid/widget/Button;

.field answerResultViewContainer:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0032
    .end annotation
.end field

.field answerResultViewOne:Lcom/intermedia/view/AnswerResultView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a002d
    .end annotation
.end field

.field answerResultViewThree:Lcom/intermedia/view/AnswerResultView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0030
    .end annotation
.end field

.field answerResultViewTwo:Lcom/intermedia/view/AnswerResultView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0031
    .end annotation
.end field

.field private answerResultViews:[Lcom/intermedia/view/AnswerResultView;

.field private answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

.field answerTextSelectedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06001d
    .end annotation
.end field

.field public answersDisabled:Z

.field badgeCorrectHeight:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f07004f
    .end annotation
.end field

.field badgeCorrectWidth:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f070050
    .end annotation
.end field

.field badgeIncorrectWidthHeight:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f070051
    .end annotation
.end field

.field correctDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lbutterknife/BindDrawable;
        value = 0x7f0800cc
    .end annotation
.end field

.field correctGreenColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06005f
    .end annotation
.end field

.field correctString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1100af
    .end annotation
.end field

.field private countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

.field countdownContainer:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0081
    .end annotation
.end field

.field countdownProgressBar:Lcom/intermedia/view/ProgressBarView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0082
    .end annotation
.end field

.field countdownTimeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0083
    .end annotation
.end field

.field darkGreyColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060061
    .end annotation
.end field

.field eliminatedString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1100b3
    .end annotation
.end field

.field extraLifeString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110011
    .end annotation
.end field

.field private hideBadgeRunnable:Ljava/lang/Runnable;

.field hqPurpleColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060088
    .end annotation
.end field

.field hqRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field

.field incorrectDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lbutterknife/BindDrawable;
        value = 0x7f0800cd
    .end annotation
.end field

.field incorrectRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06008d
    .end annotation
.end field

.field incorrectString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f11012b
    .end annotation
.end field

.field lifeImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00f4
    .end annotation
.end field

.field lightGrayColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06008e
    .end annotation
.end field

.field midGreyColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06009c
    .end annotation
.end field

.field private myAnswerId:J

.field participantCountView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0134
    .end annotation
.end field

.field private question:Lcom/intermedia/model/Question;

.field private questionId:J

.field questionStatusTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a014f
    .end annotation
.end field

.field questionTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a014b
    .end annotation
.end field

.field questionView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0151
    .end annotation
.end field

.field timeIsUpString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110190
    .end annotation
.end field

.field whiteColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f0600bd
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

    .line 43
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/intermedia/view/QuestionView;->answersDisabled:Z

    .line 121
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

    .line 43
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/intermedia/view/QuestionView;->answersDisabled:Z

    .line 126
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

    .line 43
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/intermedia/view/QuestionView;->answersDisabled:Z

    .line 132
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->init()V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    invoke-virtual {v0}, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 6

    .line 136
    invoke-virtual {p0}, Lcom/intermedia/view/QuestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-static {v0, v1, p0}, Lcom/intermedia/view/QuestionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 137
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 v0, 0x3

    .line 138
    new-array v1, v0, [Landroid/widget/Button;

    iget-object v2, p0, Lcom/intermedia/view/QuestionView;->answerButtonOne:Landroid/widget/Button;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/intermedia/view/QuestionView;->answerButtonTwo:Landroid/widget/Button;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/intermedia/view/QuestionView;->answerButtonThree:Landroid/widget/Button;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/intermedia/view/QuestionView;->answerButtons:[Landroid/widget/Button;

    .line 139
    new-array v0, v0, [Lcom/intermedia/view/AnswerResultView;

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerResultViewOne:Lcom/intermedia/view/AnswerResultView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerResultViewTwo:Lcom/intermedia/view/AnswerResultView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerResultViewThree:Lcom/intermedia/view/AnswerResultView;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/intermedia/view/QuestionView;->answerResultViews:[Lcom/intermedia/view/AnswerResultView;

    return-void
.end method

.method private initializeAnswerButtons()V
    .locals 6

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, v0}, Lcom/intermedia/view/QuestionView;->clearAnswers(Z)V

    .line 166
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->question:Lcom/intermedia/model/Question;

    invoke-virtual {v0}, Lcom/intermedia/model/Question;->getAnswers()[Lcom/intermedia/model/HQAnswer;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerButtonContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerResultViewContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerButtons:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->answerButtons:[Landroid/widget/Button;

    aget-object v1, v1, v2

    .line 172
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswer;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-boolean v3, p0, Lcom/intermedia/view/QuestionView;->answersDisabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/intermedia/view/QuestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08006a

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget v3, p0, Lcom/intermedia/view/QuestionView;->midGreyColor:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    new-instance v3, Lcom/intermedia/view/QuestionView$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/intermedia/view/QuestionView$$Lambda$0;-><init>(Lcom/intermedia/view/QuestionView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/intermedia/view/QuestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08006b

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget v3, p0, Lcom/intermedia/view/QuestionView;->darkGreyColor:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 180
    aget-object v3, v0, v2

    .line 181
    new-instance v4, Lcom/intermedia/view/QuestionView$$Lambda$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/intermedia/view/QuestionView$$Lambda$1;-><init>(Lcom/intermedia/view/QuestionView;Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetCounter()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownTimeTextView:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownProgressBar:Lcom/intermedia/view/ProgressBarView;

    invoke-virtual {v0, v1}, Lcom/intermedia/view/ProgressBarView;->setProgress(I)V

    return-void
.end method

.method private setAnswerButtonSelected(Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;)V
    .locals 1
    .param p1    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lcom/intermedia/view/QuestionView;->setAnswerButtonsClickable(Z)V

    .line 188
    iget v0, p0, Lcom/intermedia/view/QuestionView;->whiteColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 190
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

    invoke-interface {p1, p2}, Lcom/intermedia/view/QuestionView$QuestionViewListener;->onAnswerClick(Lcom/intermedia/model/HQAnswer;)V

    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 7

    .line 296
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->cancelTimer()V

    .line 297
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->question:Lcom/intermedia/model/Question;

    invoke-virtual {v0}, Lcom/intermedia/model/Question;->getTimeLeftMs()I

    move-result v0

    int-to-long v3, v0

    .line 298
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownProgressBar:Lcom/intermedia/view/ProgressBarView;

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/intermedia/view/ProgressBarView;->setMax(I)V

    .line 299
    new-instance v0, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    const-wide/16 v5, 0x10

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;-><init>(Lcom/intermedia/view/QuestionView;JJ)V

    iput-object v0, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    .line 300
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countDownTimer:Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;

    invoke-virtual {v0}, Lcom/intermedia/view/QuestionView$ProgressCountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public clearAnswers(Z)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->answerButtons:[Landroid/widget/Button;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 145
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->resetCounter()V

    :cond_1
    return-void
.end method

.method public endQuestion()V
    .locals 3

    .line 267
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "question_timedOut"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/intermedia/injection/AppObjectGraph;->get()Lcom/intermedia/ApplicationComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/ApplicationComponent;->getDebugReporter()Lcom/intermedia/util/logging/DebugReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;

    const-string v2, "QuestionView"

    invoke-direct {v1, v2}, Lcom/intermedia/util/logging/events/GameState$AnswersDisabled;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/util/logging/DebugReporter;->log(Lcom/intermedia/util/logging/events/LoggableEvent;)V

    .line 270
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionView:Landroid/view/View;

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->hideBadgeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0}, Lcom/intermedia/view/QuestionView;->setAnswerButtonsClickable(Z)V

    .line 273
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->timeIsUpString:Ljava/lang/String;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->hqPurpleColor:I

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;I)V

    return-void
.end method

.method public getQuestion()Lcom/intermedia/model/Question;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->question:Lcom/intermedia/model/Question;

    return-object v0
.end method

.method public getQuestionId()J
    .locals 2

    .line 326
    iget-wide v0, p0, Lcom/intermedia/view/QuestionView;->questionId:J

    return-wide v0
.end method

.method public hideEliminatedBadge()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method final synthetic lambda$initializeAnswerButtons$0$QuestionView(Landroid/view/View;)V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/intermedia/view/QuestionView;->showEliminatedBadgeOnQuestionClick()V

    return-void
.end method

.method final synthetic lambda$initializeAnswerButtons$1$QuestionView(Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/intermedia/view/QuestionView;->setAnswerButtonSelected(Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;)V

    return-void
.end method

.method public setAnswerButtonsClickable(Z)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->answerButtons:[Landroid/widget/Button;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 160
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnswerSelectedListener(Lcom/intermedia/view/QuestionView$QuestionViewListener;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->answerSelectedListener:Lcom/intermedia/view/QuestionView$QuestionViewListener;

    return-void
.end method

.method public setButtonSelectedForAnswerId(J)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->question:Lcom/intermedia/model/Question;

    invoke-virtual {v0}, Lcom/intermedia/model/Question;->getAnswers()[Lcom/intermedia/model/HQAnswer;

    move-result-object v0

    const/4 v1, 0x0

    .line 343
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 344
    aget-object v2, v0, v1

    .line 345
    invoke-virtual {v2}, Lcom/intermedia/model/HQAnswer;->getAnswerId()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 346
    iget-object v3, p0, Lcom/intermedia/view/QuestionView;->answerButtons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/intermedia/view/QuestionView;->setAnswerButtonSelected(Landroid/widget/Button;Lcom/intermedia/model/HQAnswer;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLifeImageView(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->lifeImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0800c0

    goto :goto_0

    :cond_0
    const p1, 0x7f0800c1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->lifeImageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/intermedia/view/QuestionView;->lightGrayColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public setMyAnswerId(J)V
    .locals 0

    .line 334
    iput-wide p1, p0, Lcom/intermedia/view/QuestionView;->myAnswerId:J

    return-void
.end method

.method public setParticipantCount(I)V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->participantCountView:Landroid/widget/TextView;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/intermedia/util/ViewerCountFormatter;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setQuestion(Lcom/intermedia/model/Question;)V
    .locals 2
    .param p1    # Lcom/intermedia/model/Question;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 308
    iput-object p1, p0, Lcom/intermedia/view/QuestionView;->question:Lcom/intermedia/model/Question;

    .line 309
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->startTimer()V

    .line 312
    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/view/QuestionView;->questionId:J

    .line 313
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-direct {p0}, Lcom/intermedia/view/QuestionView;->initializeAnswerButtons()V

    return-void
.end method

.method public setQuestionId(J)V
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/intermedia/view/QuestionView;->questionId:J

    return-void
.end method

.method public setQuestionStatus(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->correctDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->badgeCorrectWidth:I

    iget v2, p0, Lcom/intermedia/view/QuestionView;->badgeCorrectHeight:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->correctString:Ljava/lang/String;

    iget v0, p0, Lcom/intermedia/view/QuestionView;->correctGreenColor:I

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->correctDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->incorrectDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->badgeIncorrectWidthHeight:I

    iget v2, p0, Lcom/intermedia/view/QuestionView;->badgeIncorrectWidthHeight:I

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->incorrectString:Ljava/lang/String;

    iget v0, p0, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->incorrectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setQuestionTextView(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 318
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showAnswerResults(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/HQAnswerResult;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->answerButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->answerResultViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/intermedia/view/QuestionView;->answerResultViews:[Lcom/intermedia/view/AnswerResultView;

    aget-object v2, v2, v0

    .line 201
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intermedia/model/HQAnswerResult;

    .line 203
    invoke-virtual {v2}, Lcom/intermedia/view/AnswerResultView;->resetConstraintSet()V

    .line 204
    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->getAnswerId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/intermedia/view/AnswerResultView;->setAnswerId(I)V

    .line 205
    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->getAnswer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultText(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultCount(I)V

    .line 207
    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v4

    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->getTotal()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultProgressBar(II)V

    .line 209
    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->isCorrect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v2, v1}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultType(I)V

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {v2}, Lcom/intermedia/view/AnswerResultView;->getAnswerId()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/intermedia/view/QuestionView;->myAnswerId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 212
    invoke-virtual {v2, v3}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultType(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    .line 214
    invoke-virtual {v2, v3}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultType(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showEliminatedBadge()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->eliminatedString:Ljava/lang/String;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;I)V

    return-void
.end method

.method public showEliminatedBadgeOnQuestionClick()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->eliminatedString:Ljava/lang/String;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    .line 251
    invoke-static {}, Lcom/intermedia/util/AnimationUtils;->questionStatusBadgeShakeAnim()Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    .line 252
    new-instance v0, Lcom/intermedia/view/QuestionView$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/intermedia/view/QuestionView$$Lambda$2;-><init>(Lcom/intermedia/view/QuestionView;)V

    iput-object v0, p0, Lcom/intermedia/view/QuestionView;->hideBadgeRunnable:Ljava/lang/Runnable;

    .line 253
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionView:Landroid/view/View;

    iget-object v1, p0, Lcom/intermedia/view/QuestionView;->hideBadgeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showExtraLifeBadge()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->lifeImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 258
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->extraLifeString:Ljava/lang/String;

    iget v1, p0, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;I)V

    return-void
.end method

.method public showQuestionStatusBadge(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-static {}, Lcom/intermedia/util/AnimationUtils;->questionStatusBadgeScaleAnim()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 227
    invoke-static {}, Lcom/intermedia/util/AnimationUtils;->questionStatusBadgeScaleAnim()Landroid/view/animation/Animation;

    move-result-object v0

    .line 226
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/intermedia/view/QuestionView;->showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    return-void
.end method

.method public showQuestionStatusBadge(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Animation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->countdownContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 235
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object p1, p0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
