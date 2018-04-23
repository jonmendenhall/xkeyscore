.class public final Lcom/intermedia/view/AnswerResultView_ViewBinding;
.super Ljava/lang/Object;
.source "AnswerResultView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/intermedia/view/AnswerResultView;


# direct methods
.method public constructor <init>(Lcom/intermedia/view/AnswerResultView;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 23
    invoke-direct {p0, p1, p1}, Lcom/intermedia/view/AnswerResultView_ViewBinding;-><init>(Lcom/intermedia/view/AnswerResultView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/intermedia/view/AnswerResultView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/intermedia/view/AnswerResultView_ViewBinding;->target:Lcom/intermedia/view/AnswerResultView;

    const-string v0, "field \'constraintLayout\'"

    .line 30
    const-class v1, Landroid/support/constraint/ConstraintLayout;

    const v2, 0x7f0a002b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p1, Lcom/intermedia/view/AnswerResultView;->constraintLayout:Landroid/support/constraint/ConstraintLayout;

    const-string v0, "field \'resultCountTextView\'"

    .line 31
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a002c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/AnswerResultView;->resultCountTextView:Landroid/widget/TextView;

    const-string v0, "field \'resultProgressBar\'"

    .line 32
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0a002e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    const-string v0, "field \'resultTextView\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a002f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/intermedia/view/AnswerResultView;->resultTextView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005f

    .line 37
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/AnswerResultView;->correctGreenColor:I

    const v1, 0x7f06001b

    .line 38
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/AnswerResultView;->answerOtherColor:I

    const v1, 0x7f06008d

    .line 39
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p1, Lcom/intermedia/view/AnswerResultView;->incorrectRedColor:I

    const v1, 0x7f0700f0

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Lcom/intermedia/view/AnswerResultView;->roundedButtonDimen:I

    const v0, 0x7f08005f

    .line 41
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/intermedia/view/AnswerResultView;->progressCorrectDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080060

    .line 42
    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/intermedia/view/AnswerResultView;->progressOtherDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/intermedia/view/AnswerResultView_ViewBinding;->target:Lcom/intermedia/view/AnswerResultView;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/intermedia/view/AnswerResultView_ViewBinding;->target:Lcom/intermedia/view/AnswerResultView;

    .line 51
    iput-object v1, v0, Lcom/intermedia/view/AnswerResultView;->constraintLayout:Landroid/support/constraint/ConstraintLayout;

    .line 52
    iput-object v1, v0, Lcom/intermedia/view/AnswerResultView;->resultCountTextView:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/intermedia/view/AnswerResultView;->resultProgressBar:Landroid/widget/ProgressBar;

    .line 54
    iput-object v1, v0, Lcom/intermedia/view/AnswerResultView;->resultTextView:Landroid/widget/TextView;

    return-void
.end method
