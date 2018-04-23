.class public Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;
.super Lcom/firebase/ui/auth/ui/FragmentBase;
.source "SubmitConfirmationCodeFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EXTRA_MILLIS_UNTIL_FINISHED:Ljava/lang/String; = "EXTRA_MILLIS_UNTIL_FINISHED"

.field private static final RESEND_WAIT_MILLIS:J = 0x3a98L

.field public static final TAG:Ljava/lang/String; = "SubmitConfirmationCodeFragment"


# instance fields
.field private mAgreementText:Landroid/widget/TextView;

.field private mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

.field private mCountDownTextView:Landroid/widget/TextView;

.field private mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

.field private mEditPhoneTextView:Landroid/widget/TextView;

.field private mMillisUntilFinished:J

.field private mResendCodeTextView:Landroid/widget/TextView;

.field private mSubmitConfirmationButton:Landroid/widget/Button;

.field private mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Lcom/firebase/ui/auth/ui/phone/PhoneActivity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mResendCodeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountDownTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Lcom/firebase/ui/auth/util/CustomCountDownTimer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->submitConfirmationCode()V

    return-void
.end method

.method static synthetic access$500(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)Landroid/widget/Button;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mSubmitConfirmationButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$602(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mMillisUntilFinished:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setTimer(J)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private createBucketOnEditCallback(Landroid/widget/Button;)Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;
    .locals 1

    .line 260
    new-instance v0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$6;-><init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;Landroid/widget/Button;)V

    return-object v0
.end method

.method private createBucketedTextChangeListener()Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;
    .locals 5

    .line 208
    new-instance v0, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    const-string v2, "-"

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mSubmitConfirmationButton:Landroid/widget/Button;

    .line 209
    invoke-direct {p0, v3}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->createBucketOnEditCallback(Landroid/widget/Button;)Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;-><init>(Landroid/widget/EditText;ILjava/lang/String;Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener$ContentChangeCallback;)V

    return-object v0
.end method

.method private createCountDownTimer(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)Lcom/firebase/ui/auth/util/CustomCountDownTimer;
    .locals 10

    .line 242
    new-instance v9, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;

    const-wide/16 v4, 0x1f4

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p4

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$5;-><init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;JJLcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v9
.end method

.method public static newInstance(Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;
    .locals 3

    .line 63
    new-instance v0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;

    invoke-direct {v0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_flow_params"

    .line 66
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "extra_phone_number"

    .line 67
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setTimer(J)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountDownTextView:Landroid/widget/TextView;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_resend_code_in:I

    invoke-virtual {p0, v1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->timeRoundedToSeconds(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    .line 135
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUpTermsOfService()V
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    sget v2, Lcom/firebase/ui/auth/R$string;->fui_continue_phone_login:I

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mAgreementText:Landroid/widget/TextView;

    .line 225
    invoke-static {v0, v1, v2, v3}, Lcom/firebase/ui/auth/util/ui/PreambleHandler;->setup(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;ILandroid/widget/TextView;)V

    return-void
.end method

.method private setupConfirmationCodeEditText()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    const-string v1, "------"

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->createBucketedTextChangeListener()Lcom/firebase/ui/auth/util/ui/BucketedTextChangeListener;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    invoke-virtual {v1, v0}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$4;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$4;-><init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)V

    invoke-static {v0, v1}, Lcom/firebase/ui/auth/util/ui/ImeHelper;->setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V

    return-void
.end method

.method private setupCountDown(J)V
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 155
    div-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setTimer(J)V

    .line 158
    iget-object v3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountDownTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mResendCodeTextView:Landroid/widget/TextView;

    move-object v2, p0

    move-object v5, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->createCountDownTimer(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;J)Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    .line 162
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->startTimer()V

    return-void
.end method

.method private setupEditPhoneNumberTextView(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mEditPhoneTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mEditPhoneTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$3;-><init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupResendConfirmationCodeTextView(Ljava/lang/String;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mResendCodeTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$1;-><init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupSubmitConfirmationCodeButton()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mSubmitConfirmationButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mSubmitConfirmationButton:Landroid/widget/Button;

    new-instance v1, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$2;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment$2;-><init>(Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startTimer()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->start()V

    :cond_0
    return-void
.end method

.method private submitConfirmationCode()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->getUnspacedText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;->submitConfirmationCode(Ljava/lang/String;)V

    return-void
.end method

.method private timeRoundedToSeconds(D)I
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method getCountdownTimer()Lcom/firebase/ui/auth/util/CustomCountDownTimer;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountdownTimer:Lcom/firebase/ui/auth/util/CustomCountDownTimer;

    const-string v1, "EXTRA_MILLIS_UNTIL_FINISHED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/firebase/ui/auth/util/CustomCountDownTimer;->update(J)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    if-nez p1, :cond_1

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity must implement PhoneVerificationHandler"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mVerifier:Lcom/firebase/ui/auth/ui/phone/PhoneActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 77
    sget p3, Lcom/firebase/ui/auth/R$layout;->fui_confirmation_code_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 80
    sget p3, Lcom/firebase/ui/auth/R$id;->edit_phone_number:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mEditPhoneTextView:Landroid/widget/TextView;

    .line 81
    sget p3, Lcom/firebase/ui/auth/R$id;->ticker:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mCountDownTextView:Landroid/widget/TextView;

    .line 82
    sget p3, Lcom/firebase/ui/auth/R$id;->resend_code:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mResendCodeTextView:Landroid/widget/TextView;

    .line 83
    sget p3, Lcom/firebase/ui/auth/R$id;->confirmation_code:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    .line 84
    sget p3, Lcom/firebase/ui/auth/R$id;->submit_confirmation_code:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mSubmitConfirmationButton:Landroid/widget/Button;

    .line 85
    sget p3, Lcom/firebase/ui/auth/R$id;->create_account_tos:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mAgreementText:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "extra_phone_number"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 89
    sget v0, Lcom/firebase/ui/auth/R$string;->fui_verify_your_phone_title:I

    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupConfirmationCodeEditText()V

    .line 91
    invoke-direct {p0, p3}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupEditPhoneNumberTextView(Ljava/lang/String;)V

    const-wide/16 v0, 0x3a98

    .line 92
    invoke-direct {p0, v0, v1}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupCountDown(J)V

    .line 93
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupSubmitConfirmationCodeButton()V

    .line 94
    invoke-direct {p0, p3}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setupResendConfirmationCodeTextView(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->setUpTermsOfService()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->cancelTimer()V

    .line 125
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 130
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "EXTRA_MILLIS_UNTIL_FINISHED"

    .line 131
    iget-wide v1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mMillisUntilFinished:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/firebase/ui/auth/ui/FragmentBase;->onStart()V

    .line 102
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->requestFocus()Z

    .line 103
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    iget-object v1, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method setConfirmationCode(Ljava/lang/String;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/phone/SubmitConfirmationCodeFragment;->mConfirmationCodeEditText:Lcom/firebase/ui/auth/ui/phone/SpacedEditText;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/ui/phone/SpacedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
