.class Lcom/intermedia/view/AddReferralDialog$ViewHost;
.super Ljava/lang/Object;
.source "AddReferralDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/view/AddReferralDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHost"
.end annotation


# instance fields
.field applyReferralCodeString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110005
    .end annotation
.end field

.field availableTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a009a
    .end annotation
.end field

.field doneButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a009b
    .end annotation
.end field

.field grid2Dimen:I
    .annotation build Lbutterknife/BindDimen;
        value = 0x7f0700b6
    .end annotation
.end field

.field invalidReferralCodeString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110018
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a009d
    .end annotation
.end field

.field referralCodeString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110026
    .end annotation
.end field

.field referralEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a009c
    .end annotation
.end field

.field sorryThatDidntWorkString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110030
    .end annotation
.end field

.field thatWorkedString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110034
    .end annotation
.end field

.field titleTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a009e
    .end annotation
.end field

.field validReferralCodeString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110040
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/intermedia/view/AddReferralDialog$ViewHost;->setDoneButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/view/AddReferralDialog$ViewHost;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/intermedia/view/AddReferralDialog$ViewHost;->setReferralState(Z)V

    return-void
.end method

.method private setReferralState(Z)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->availableTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->validReferralCodeString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->invalidReferralCodeString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->grid2Dimen:I

    invoke-static {v0, p1, v1}, Lcom/intermedia/util/ValidationUtils;->setDrawable(Landroid/widget/TextView;ZI)V

    return-void
.end method


# virtual methods
.method resetLoading()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->doneButton:Landroid/widget/Button;

    const v1, 0x7f11000f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method setDoneButtonEnabled(Z)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->doneButton:Landroid/widget/Button;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method setLoading()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->doneButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->referralEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/intermedia/view/AddReferralDialog$ViewHost;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
