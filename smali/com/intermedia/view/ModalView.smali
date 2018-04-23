.class public final Lcom/intermedia/view/ModalView;
.super Lcom/intermedia/view/HQModalView;
.source "ModalView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModalView"


# instance fields
.field private final activity:Landroid/app/Activity;

.field answerResultView:Lcom/intermedia/view/AnswerResultView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a010f
    .end annotation
.end field

.field avatarBadgeView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0110
    .end annotation
.end field

.field avatarView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0112
    .end annotation
.end field

.field blackColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060022
    .end annotation
.end field

.field continueWatchingTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a007f
    .end annotation
.end field

.field externalActionButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0117
    .end annotation
.end field

.field hqRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field

.field hqYellowColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06008b
    .end annotation
.end field

.field inviteAFriendString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f11001a
    .end annotation
.end field

.field modalBody:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0115
    .end annotation
.end field

.field modalTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a011a
    .end annotation
.end field

.field whiteColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f0600bd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/intermedia/model/ModalType;Landroid/widget/ImageView;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/model/ModalType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0c0064

    .line 51
    invoke-direct {p0, p1, v0, p3}, Lcom/intermedia/view/HQModalView;-><init>(Landroid/app/Activity;ILandroid/widget/ImageView;)V

    .line 52
    iput-object p1, p0, Lcom/intermedia/view/ModalView;->activity:Landroid/app/Activity;

    .line 53
    new-instance v2, Lcom/intermedia/view/ModalView$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/intermedia/view/ModalView$$Lambda$0;-><init>(Lcom/intermedia/view/ModalView;)V

    new-instance v3, Lcom/intermedia/view/ModalView$$Lambda$1;

    invoke-direct {v3, p0}, Lcom/intermedia/view/ModalView$$Lambda$1;-><init>(Lcom/intermedia/view/ModalView;)V

    new-instance v4, Lcom/intermedia/view/ModalView$$Lambda$2;

    invoke-direct {v4, p0}, Lcom/intermedia/view/ModalView$$Lambda$2;-><init>(Lcom/intermedia/view/ModalView;)V

    new-instance v5, Lcom/intermedia/view/ModalView$$Lambda$3;

    invoke-direct {v5, p0}, Lcom/intermedia/view/ModalView$$Lambda$3;-><init>(Lcom/intermedia/view/ModalView;)V

    new-instance v6, Lcom/intermedia/view/ModalView$$Lambda$4;

    invoke-direct {v6, p0}, Lcom/intermedia/view/ModalView$$Lambda$4;-><init>(Lcom/intermedia/view/ModalView;)V

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/intermedia/model/ModalType;->value(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private setEliminatedModal(Lcom/intermedia/model/HQQuestionResult;)Lkotlin/Unit;
    .locals 5
    .param p1    # Lcom/intermedia/model/HQQuestionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    const v1, 0x7f11004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->playerDidAnswer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    const v3, 0x7f0800d5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    invoke-virtual {v2, v1}, Lcom/intermedia/view/AnswerResultView;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    .line 65
    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getYourAnswer()Lcom/intermedia/model/HQAnswerResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/intermedia/model/HQAnswerResult;->getAnswer()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultText(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultType(I)V

    .line 67
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    invoke-virtual {v0}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v3

    .line 68
    invoke-virtual {v0}, Lcom/intermedia/model/HQAnswerResult;->getTotal()I

    move-result v4

    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultProgressBar(II)V

    .line 69
    iget-object v2, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    invoke-virtual {v0}, Lcom/intermedia/model/HQAnswerResult;->getVotes()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/intermedia/view/AnswerResultView;->setAnswerResultCount(I)V

    .line 70
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/intermedia/view/AnswerResultView;->setResultTextSize(I)V

    .line 71
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    const v2, 0x7f11017a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 72
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQQuestionResult;->getQuestion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setupAvatar()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    invoke-virtual {p1, v0}, Lcom/intermedia/view/AnswerResultView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f0800ad

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/view/ModalView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 78
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/intermedia/view/ModalView;->inviteAFriendString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    const v0, 0x7f1100b4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v0, p0, Lcom/intermedia/view/ModalView;->whiteColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v0, p0, Lcom/intermedia/view/ModalView;->hqRedColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    new-instance v0, Lcom/intermedia/view/ModalView$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/intermedia/view/ModalView$$Lambda$5;-><init>(Lcom/intermedia/view/ModalView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private setLateModal()Lkotlin/Unit;
    .locals 3

    .line 90
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setupAvatar()V

    .line 91
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/intermedia/view/AnswerResultView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    const v2, 0x7f110136

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    const v2, 0x7f110135

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    const v1, 0x7f11000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v1, p0, Lcom/intermedia/view/ModalView;->whiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v1, p0, Lcom/intermedia/view/ModalView;->hqRedColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 99
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/view/ModalView$$Lambda$6;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ModalView$$Lambda$6;-><init>(Lcom/intermedia/view/ModalView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private setThanksModal()Lkotlin/Unit;
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setupAvatar()V

    .line 105
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/intermedia/view/AnswerResultView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    const v1, 0x7f11018f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    const v1, 0x7f11018e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/intermedia/view/ModalView;->activity:Landroid/app/Activity;

    const v2, 0x7f110188

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v1, p0, Lcom/intermedia/view/ModalView;->whiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/view/ModalView$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/intermedia/view/ModalView$$Lambda$7;-><init>(Lcom/intermedia/view/ModalView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private setWelcomeBackModal()Lkotlin/Unit;
    .locals 4

    .line 133
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setupAvatar()V

    .line 134
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/intermedia/view/AnswerResultView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    const v2, 0x7f1101aa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    const v2, 0x7f1101a9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->avatarView:Landroid/widget/ImageView;

    const v2, 0x7f0800ad

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/intermedia/view/ModalView;->activity:Landroid/app/Activity;

    const v3, 0x7f11000b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v2, p0, Lcom/intermedia/view/ModalView;->whiteColor:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    new-instance v2, Lcom/intermedia/view/ModalView$$Lambda$9;

    invoke-direct {v2, p0}, Lcom/intermedia/view/ModalView$$Lambda$9;-><init>(Lcom/intermedia/view/ModalView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private setWinnerModal(Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setupAvatar()V

    .line 117
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->answerResultView:Lcom/intermedia/view/AnswerResultView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/intermedia/view/AnswerResultView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/intermedia/view/ModalView;->modalBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->modalTitle:Landroid/widget/TextView;

    const v0, 0x7f1101ae

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->avatarBadgeView:Landroid/widget/ImageView;

    const v1, 0x7f0800e2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 123
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->continueWatchingTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    const v0, 0x7f11017a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 126
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v0, p0, Lcom/intermedia/view/ModalView;->hqYellowColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 127
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    iget v0, p0, Lcom/intermedia/view/ModalView;->blackColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->externalActionButton:Landroid/widget/Button;

    new-instance v0, Lcom/intermedia/view/ModalView$$Lambda$8;

    invoke-direct {v0, p0}, Lcom/intermedia/view/ModalView$$Lambda$8;-><init>(Lcom/intermedia/view/ModalView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private setupAvatar()V
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->disposables()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/user/UserRepository;

    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/intermedia/user/UserRepository;-><init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;)V

    .line 150
    invoke-virtual {v2}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/intermedia/view/ModalView$$Lambda$10;

    invoke-direct {v3, p0, v0}, Lcom/intermedia/view/ModalView$$Lambda$10;-><init>(Lcom/intermedia/view/ModalView;Landroid/content/Context;)V

    .line 151
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private share()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->disposables()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/user/UserRepository;

    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/intermedia/user/UserRepository;-><init>(Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;)V

    .line 171
    invoke-virtual {v2}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/intermedia/view/ModalView$$Lambda$11;

    invoke-direct {v3, p0, v0}, Lcom/intermedia/view/ModalView$$Lambda$11;-><init>(Lcom/intermedia/view/ModalView;Landroid/content/Context;)V

    .line 172
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 170
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$ModalView(Lcom/intermedia/model/HQQuestionResult;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/view/ModalView;->setEliminatedModal(Lcom/intermedia/model/HQQuestionResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic bridge$lambda$1$ModalView()Lkotlin/Unit;
    .locals 1

    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setLateModal()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic bridge$lambda$2$ModalView()Lkotlin/Unit;
    .locals 1

    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setThanksModal()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic bridge$lambda$3$ModalView()Lkotlin/Unit;
    .locals 1

    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->setWelcomeBackModal()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic bridge$lambda$4$ModalView(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/view/ModalView;->setWinnerModal(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0a0116,
            0x7f0a007f
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/intermedia/view/HQModalView;->dismiss()V

    return-void
.end method

.method final synthetic lambda$setEliminatedModal$0$ModalView(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->share()V

    return-void
.end method

.method final synthetic lambda$setLateModal$1$ModalView(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->dismiss()V

    return-void
.end method

.method final synthetic lambda$setThanksModal$2$ModalView(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->share()V

    return-void
.end method

.method final synthetic lambda$setWelcomeBackModal$4$ModalView(Landroid/view/View;)V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->dismiss()V

    return-void
.end method

.method final synthetic lambda$setWinnerModal$3$ModalView(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/intermedia/view/ModalView;->share()V

    return-void
.end method

.method final synthetic lambda$setupAvatar$5$ModalView(Landroid/content/Context;Lcom/intermedia/model/HQUser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p2}, Lcom/intermedia/model/HQUser;->avatarUrl()Ljava/lang/String;

    move-result-object p2

    .line 153
    sget-object v0, Lcom/intermedia/view/ModalView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avatar url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p2}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/view/ModalView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/intermedia/view/ModalView;->avatarView:Landroid/widget/ImageView;

    const p2, 0x7f0800a4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$share$6$ModalView(Landroid/content/Context;Lcom/intermedia/model/HQUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p2}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/intermedia/util/UIUtils;->invite(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/intermedia/view/ModalView;->dismiss()V

    return-void
.end method
