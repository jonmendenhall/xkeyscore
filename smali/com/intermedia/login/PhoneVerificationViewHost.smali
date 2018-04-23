.class Lcom/intermedia/login/PhoneVerificationViewHost;
.super Ljava/lang/Object;
.source "PhoneVerificationViewHost.java"


# instance fields
.field bgPatternImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0041
    .end annotation
.end field

.field final bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field callMeButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0051
    .end annotation
.end field

.field callMeDivider:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0052
    .end annotation
.end field

.field countryCodePickerButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0085
    .end annotation
.end field

.field countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0084
    .end annotation
.end field

.field firstStepContainer:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00bf
    .end annotation
.end field

.field firstStepNextButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a00c0
    .end annotation
.end field

.field phoneInputCountryCodeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a013d
    .end annotation
.end field

.field phoneNumberInput:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a013f
    .end annotation
.end field

.field phoneNumberProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0140
    .end annotation
.end field

.field resendCodeButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0159
    .end annotation
.end field

.field secondStepNextButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0177
    .end annotation
.end field

.field verificationCodeInput:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e6
    .end annotation
.end field

.field verificationMessageTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e7
    .end annotation
.end field

.field verificationProgressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01e8
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a01ea
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 50
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 51
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->bgPatternImageView:Landroid/widget/ImageView;

    sget-wide v0, Lcom/intermedia/util/AnimationUtils;->BG_ROTATION_DURATION:J

    invoke-static {v0, v1}, Lcom/intermedia/util/AnimationUtils;->centeredRotationAnim(J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-static {p2}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f000000    # 0.5f

    .line 100
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method disableFirstStepNextButton()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/intermedia/login/PhoneVerificationViewHost;->setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    return-void
.end method

.method disableResendInputs()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableSecondStepNextButton()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->secondStepNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/intermedia/login/PhoneVerificationViewHost;->setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    return-void
.end method

.method phoneNumberTextChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f0a013f
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepNextButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/intermedia/login/PhoneVerificationViewHost;->setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    return-void
.end method

.method resetFirstStepNextButton()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/intermedia/login/PhoneVerificationViewHost;->setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    return-void
.end method

.method resetResendInputs(Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    const v2, 0x7f11016e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method resetSecondStepNextButton()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->secondStepNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationCodeInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/intermedia/login/PhoneVerificationViewHost;->setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    return-void
.end method

.method verificationCodeChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f0a01e6
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationViewHost;->secondStepNextButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/intermedia/login/PhoneVerificationViewHost;->setButtonEnabled(Landroid/widget/Button;Ljava/lang/CharSequence;)V

    return-void
.end method
