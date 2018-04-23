.class public final Lcom/intermedia/view/AnswerResultView;
.super Landroid/widget/RelativeLayout;
.source "AnswerResultView.java"


# static fields
.field public static final ANSWER_CORRECT:I = 0x0

.field public static final ANSWER_OTHER:I = 0x2

.field public static final ANSWER_WRONG:I = 0x1


# instance fields
.field private answerId:I

.field answerOtherColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06001b
    .end annotation
.end field

.field constraintLayout:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a002b
    .end annotation
.end field

.field correctGreenColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06005f
    .end annotation
.end field

.field incorrectRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06008d
    .end annotation
.end field

.field progressCorrectDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lbutterknife/BindDrawable;
        value = 0x7f08005f
    .end annotation
.end field

.field progressOtherDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lbutterknife/BindDrawable;
        value = 0x7f080060
    .end annotation
.end field

.field resultCountTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a002c
    .end annotation
.end field

.field resultProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a002e
    .end annotation
.end field

.field resultTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a002f
    .end annotation
.end field

.field roundedButtonDimen:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f0700f0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/intermedia/view/AnswerResultView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/intermedia/view/AnswerResultView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/intermedia/view/AnswerResultView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAnswerId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/intermedia/view/AnswerResultView;->answerId:I

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0c002b

    .line 61
    invoke-static {p1, v0, p0}, Lcom/intermedia/view/AnswerResultView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public resetConstraintSet()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->constraintLayout:Landroid/support/constraint/ConstraintLayout;

    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->setConstraintSet(Landroid/support/constraint/ConstraintSet;)V

    return-void
.end method

.method public setAnswerId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/intermedia/view/AnswerResultView;->answerId:I

    return-void
.end method

.method public setAnswerResultCount(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->resultCountTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/intermedia/util/NumberUtils;->INSTANCE:Lcom/intermedia/util/NumberUtils;

    invoke-virtual {v1, p1}, Lcom/intermedia/util/NumberUtils;->format(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAnswerResultProgressBar(II)V
    .locals 3

    .line 90
    iget v0, p0, Lcom/intermedia/view/AnswerResultView;->roundedButtonDimen:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    int-to-float v2, p1

    int-to-float p2, p2

    div-float/2addr v2, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p2

    if-eqz p1, :cond_0

    int-to-float p1, v0

    .line 92
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 94
    :goto_0
    iget-object p2, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 95
    iget-object p2, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "progress"

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    float-to-int p1, p1

    aput p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x2bc

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setAnswerResultText(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->resultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAnswerResultType(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 120
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->progressOtherDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/intermedia/view/AnswerResultView;->answerOtherColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->progressOtherDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/intermedia/view/AnswerResultView;->answerOtherColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->progressOtherDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/intermedia/view/AnswerResultView;->incorrectRedColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->progressCorrectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p1, p0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/intermedia/view/AnswerResultView;->correctGreenColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResultTextSize(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView;->resultTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
