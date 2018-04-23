.class public Lcom/intermedia/view/QuestionView_ViewBinding;
.super Ljava/lang/Object;
.source "QuestionView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/view/QuestionView;


# direct methods
.method public constructor <init>(Lcom/intermedia/view/QuestionView;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0, p1, p1}, Lcom/intermedia/view/QuestionView_ViewBinding;-><init>(Lcom/intermedia/view/QuestionView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/view/QuestionView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/intermedia/view/QuestionView_ViewBinding;->target:Lcom/intermedia/view/QuestionView;

    const-string v0, "field \'answerButtonContainer\'"

    const v1, 0x7f0a0027

    .line 32
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerButtonContainer:Landroid/view/View;

    const-string v0, "field \'answerButtonOne\'"

    .line 33
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0028

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerButtonOne:Landroid/widget/Button;

    const-string v0, "field \'answerButtonTwo\'"

    .line 34
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a002a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerButtonTwo:Landroid/widget/Button;

    const-string v0, "field \'answerButtonThree\'"

    .line 35
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0a0029

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerButtonThree:Landroid/widget/Button;

    const-string v0, "field \'answerResultViewContainer\'"

    const v1, 0x7f0a0032

    .line 36
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerResultViewContainer:Landroid/view/View;

    const-string v0, "field \'answerResultViewOne\'"

    .line 37
    const-class v1, Lcom/intermedia/view/AnswerResultView;

    const v2, 0x7f0a002d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/view/AnswerResultView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerResultViewOne:Lcom/intermedia/view/AnswerResultView;

    const-string v0, "field \'answerResultViewTwo\'"

    .line 38
    const-class v1, Lcom/intermedia/view/AnswerResultView;

    const v2, 0x7f0a0031

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/view/AnswerResultView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerResultViewTwo:Lcom/intermedia/view/AnswerResultView;

    const-string v0, "field \'answerResultViewThree\'"

    .line 39
    const-class v1, Lcom/intermedia/view/AnswerResultView;

    const v2, 0x7f0a0030

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/view/AnswerResultView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->answerResultViewThree:Lcom/intermedia/view/AnswerResultView;

    const-string v0, "field \'countdownProgressBar\'"

    .line 40
    const-class v1, Lcom/intermedia/view/ProgressBarView;

    const v2, 0x7f0a0082

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/view/ProgressBarView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->countdownProgressBar:Lcom/intermedia/view/ProgressBarView;

    const-string v0, "field \'countdownTimeTextView\'"

    .line 41
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0083

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->countdownTimeTextView:Landroid/widget/TextView;

    const-string v0, "field \'countdownContainer\'"

    .line 42
    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0081

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->countdownContainer:Landroid/widget/FrameLayout;

    const-string v0, "field \'questionTextView\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a014b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->questionTextView:Landroid/widget/TextView;

    const-string v0, "field \'questionView\'"

    const v1, 0x7f0a0151

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->questionView:Landroid/view/View;

    const-string v0, "field \'participantCountView\'"

    .line 45
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0134

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->participantCountView:Landroid/widget/TextView;

    const-string v0, "field \'questionStatusTextView\'"

    .line 46
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a014f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    const-string v0, "field \'lifeImageView\'"

    .line 47
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a00f4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/intermedia/view/QuestionView;->lifeImageView:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005f

    .line 51
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->correctGreenColor:I

    const v1, 0x7f06008d

    .line 52
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->incorrectRedColor:I

    const v1, 0x7f06001d

    .line 53
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->answerTextSelectedColor:I

    const v1, 0x7f060088

    .line 54
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->hqPurpleColor:I

    const v1, 0x7f06008e

    .line 55
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->lightGrayColor:I

    const v1, 0x7f06009c

    .line 56
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->midGreyColor:I

    const v1, 0x7f060061

    .line 57
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->darkGreyColor:I

    const v1, 0x7f060089

    .line 58
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->hqRedColor:I

    const v1, 0x7f0600bd

    .line 59
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->whiteColor:I

    const v1, 0x7f07004f

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->badgeCorrectHeight:I

    const v1, 0x7f070050

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->badgeCorrectWidth:I

    const v1, 0x7f070051

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/QuestionView;->badgeIncorrectWidthHeight:I

    const v1, 0x7f0800cc

    .line 63
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/intermedia/view/QuestionView;->correctDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0800cd

    .line 64
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/QuestionView;->incorrectDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f1100af

    .line 65
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/QuestionView;->correctString:Ljava/lang/String;

    const p2, 0x7f1100b3

    .line 66
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/QuestionView;->eliminatedString:Ljava/lang/String;

    const p2, 0x7f110011

    .line 67
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/QuestionView;->extraLifeString:Ljava/lang/String;

    const p2, 0x7f11012b

    .line 68
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/QuestionView;->incorrectString:Ljava/lang/String;

    const p2, 0x7f110190

    .line 69
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/QuestionView;->timeIsUpString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/intermedia/view/QuestionView_ViewBinding;->target:Lcom/intermedia/view/QuestionView;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/intermedia/view/QuestionView_ViewBinding;->target:Lcom/intermedia/view/QuestionView;

    .line 79
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerButtonContainer:Landroid/view/View;

    .line 80
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerButtonOne:Landroid/widget/Button;

    .line 81
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerButtonTwo:Landroid/widget/Button;

    .line 82
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerButtonThree:Landroid/widget/Button;

    .line 83
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerResultViewContainer:Landroid/view/View;

    .line 84
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerResultViewOne:Lcom/intermedia/view/AnswerResultView;

    .line 85
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerResultViewTwo:Lcom/intermedia/view/AnswerResultView;

    .line 86
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->answerResultViewThree:Lcom/intermedia/view/AnswerResultView;

    .line 87
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->countdownProgressBar:Lcom/intermedia/view/ProgressBarView;

    .line 88
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->countdownTimeTextView:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->countdownContainer:Landroid/widget/FrameLayout;

    .line 90
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->questionTextView:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->questionView:Landroid/view/View;

    .line 92
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->participantCountView:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->questionStatusTextView:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/intermedia/view/QuestionView;->lifeImageView:Landroid/widget/ImageView;

    return-void
.end method
