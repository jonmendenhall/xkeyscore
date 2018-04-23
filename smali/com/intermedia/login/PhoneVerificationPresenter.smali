.class public Lcom/intermedia/login/PhoneVerificationPresenter;
.super Ljava/lang/Object;
.source "PhoneVerificationPresenter.java"

# interfaces
.implements Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/login/PhoneVerificationPresenter$PhoneVerificationException;,
        Lcom/intermedia/login/PhoneVerificationPresenter$VerificationPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_RETRY_INTERVAL:J

.field private static final PAGE_PHONE_NUMBER:I = 0x0

.field private static final PAGE_VERIFICATION_CODE:I = 0x1

.field private static final STATE_PHONE_NUMBER_PARAM:Ljava/lang/String; = "phone_number_param"

.field private static final STATE_VERIFICATION_ID:Ljava/lang/String; = "verification_id"

.field private static final STEP_CODE_ACCEPTED:Ljava/lang/String; = "code_accepted"

.field private static final STEP_CODE_ATTEMPTED:Ljava/lang/String; = "code_attempted"

.field private static final STEP_FLOW_STARTED:Ljava/lang/String; = "flow_started"

.field private static final STEP_PHONE_ACCEPTED:Ljava/lang/String; = "phone_accepted"

.field private static final STEP_VALID_PHONE_ENTERED:Ljava/lang/String; = "valid_phone_entered"


# instance fields
.field private final activity:Lcom/intermedia/login/PhoneVerificationActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final apiErrorParser:Lcom/intermedia/network/ApiErrorParser;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final hqApi:Lcom/intermedia/network/LoggedOutApiService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field invalidPhoneNumber:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1100b5
    .end annotation
.end field

.field invalidVerificationCode:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1100b6
    .end annotation
.end field

.field private final loggedSteps:Ljava/util/HashSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumberParam:Ljava/lang/String;

.field private resendCountdownTimer:Landroid/os/CountDownTimer;

.field private selectedCountry:Lcom/intermedia/login/CountryInfo;

.field private verificationId:Lcom/intermedia/model/VerificationId;

.field verificationSuccess:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f1101a6
    .end annotation
.end field

.field private final viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/login/PhoneVerificationPresenter;->DEFAULT_RETRY_INTERVAL:J

    return-void
.end method

.method constructor <init>(Lcom/intermedia/login/PhoneVerificationActivity;Lcom/intermedia/login/PhoneVerificationViewHost;Landroid/os/Bundle;Lcom/intermedia/network/ApiErrorParser;Lcom/intermedia/network/LoggedOutApiService;)V
    .locals 1
    .param p1    # Lcom/intermedia/login/PhoneVerificationActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/login/PhoneVerificationViewHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/intermedia/network/ApiErrorParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/network/LoggedOutApiService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->loggedSteps:Ljava/util/HashSet;

    .line 86
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 87
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->activity:Lcom/intermedia/login/PhoneVerificationActivity;

    .line 88
    iput-object p2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    .line 89
    iput-object p4, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    .line 90
    iput-object p5, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->hqApi:Lcom/intermedia/network/LoggedOutApiService;

    if-eqz p3, :cond_0

    const-string p1, "verification_id"

    .line 94
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/VerificationId;

    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    const-string p1, "phone_number_param"

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    :cond_0
    const-string p1, "flow_started"

    .line 98
    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->logCurrentStep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intermedia/login/PhoneVerificationPresenter;)Lcom/intermedia/login/PhoneVerificationViewHost;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intermedia/login/PhoneVerificationPresenter;)Lcom/intermedia/model/VerificationId;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    return-object p0
.end method

.method private handleErrorResponse(Lretrofit2/Response;)V
    .locals 1
    .param p1    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    invoke-virtual {v0, p1}, Lcom/intermedia/network/ApiErrorParser;->parse(Lretrofit2/Response;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$13;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private logCurrentStep(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 344
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->loggedSteps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->loggedSteps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-static {p1}, Lcom/intermedia/login/PhoneVerificationReporter;->reportStep(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportError(Ljava/lang/Throwable;I)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 236
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 237
    invoke-static {p2}, Lcom/intermedia/login/PhoneVerificationReporter;->reportError(I)V

    .line 238
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->updateUiOnError(Ljava/lang/String;)V

    return-void
.end method

.method private setSelectedCountryViews(Lcom/intermedia/login/CountryInfo;)V
    .locals 4
    .param p1    # Lcom/intermedia/login/CountryInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->selectedCountry:Lcom/intermedia/login/CountryInfo;

    .line 182
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/intermedia/login/CountryInfo;->callingCode:I

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f110163

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v1, v1, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodePickerButton:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/intermedia/login/CountryInfo;->locale:Ljava/util/Locale;

    .line 186
    invoke-static {v3}, Lcom/intermedia/login/CountryInfo;->localeToEmoji(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/intermedia/login/CountryInfo;->locale:Ljava/util/Locale;

    .line 187
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneInputCountryCodeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private showCountryCodesBottomSheet(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/intermedia/util/UIUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 169
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->bringToFront()V

    return-void
.end method

.method private startResendCountdown()V
    .locals 8

    .line 201
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationViewHost;->disableResendInputs()V

    .line 202
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    .line 203
    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    .line 204
    invoke-virtual {v1}, Lcom/intermedia/model/VerificationId;->retrySeconds()J

    move-result-wide v1

    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    sget-wide v0, Lcom/intermedia/login/PhoneVerificationPresenter;->DEFAULT_RETRY_INTERVAL:J

    goto :goto_0

    .line 205
    :goto_1
    new-instance v0, Lcom/intermedia/login/PhoneVerificationPresenter$1;

    const-wide/16 v6, 0x1f4

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/intermedia/login/PhoneVerificationPresenter$1;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;JJ)V

    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->resendCountdownTimer:Landroid/os/CountDownTimer;

    .line 219
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->resendCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateUiOnError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 243
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private validatePhoneNumberInput()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 254
    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->selectedCountry:Lcom/intermedia/login/CountryInfo;

    iget v2, v2, Lcom/intermedia/login/CountryInfo;->callingCode:I

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 256
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    invoke-static {v1}, Lcom/intermedia/util/PhoneNumberUtils;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v1, v1, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->invalidPhoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v1, v1, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationViewHost;->disableFirstStepNextButton()V

    .line 269
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "valid_phone_entered"

    .line 270
    invoke-direct {p0, v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->logCurrentStep(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v2, v2, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v2}, Lcom/intermedia/util/UIUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->hqApi:Lcom/intermedia/network/LoggedOutApiService;

    new-instance v2, Lcom/intermedia/model/PhoneBody;

    const-string v3, "sms"

    invoke-static {v1}, Lcom/intermedia/util/PhoneNumberUtils;->formatE164(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/intermedia/model/PhoneBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/intermedia/network/LoggedOutApiService;->getVerificationId(Lcom/intermedia/model/PhoneBody;)Lio/reactivex/Single;

    move-result-object v0

    .line 274
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$14;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$14;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    new-instance v2, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$15;

    invoke-direct {v2, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$15;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 258
    :catch_0
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->invalidPhoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v1, v1, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private validateVerificationCodeInput()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationCodeInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 302
    :cond_0
    sget-object v1, Lcom/intermedia/util/Patterns;->NUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->invalidVerificationCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v1, v1, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v1}, Lcom/intermedia/login/PhoneVerificationViewHost;->disableSecondStepNextButton()V

    .line 308
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v1, v1, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v1, "code_attempted"

    .line 309
    invoke-direct {p0, v1}, Lcom/intermedia/login/PhoneVerificationPresenter;->logCurrentStep(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v2, v2, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v2}, Lcom/intermedia/util/UIUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 312
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->hqApi:Lcom/intermedia/network/LoggedOutApiService;

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    invoke-virtual {v2}, Lcom/intermedia/model/VerificationId;->verificationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/intermedia/model/CodeBody;

    invoke-direct {v3, v0}, Lcom/intermedia/model/CodeBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/intermedia/network/LoggedOutApiService;->postVerificationCode(Ljava/lang/String;Lcom/intermedia/model/CodeBody;)Lio/reactivex/Single;

    move-result-object v0

    .line 314
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$16;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$16;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    new-instance v2, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$17;

    invoke-direct {v2, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$17;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$PhoneVerificationPresenter(Lcom/intermedia/login/CountryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->setSelectedCountryViews(Lcom/intermedia/login/CountryInfo;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$PhoneVerificationPresenter(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->showCountryCodesBottomSheet(Landroid/view/View;)V

    return-void
.end method

.method configure()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 103
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    .line 104
    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$VerificationPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/intermedia/login/PhoneVerificationPresenter$VerificationPagerAdapter;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 107
    invoke-static {}, Lcom/intermedia/util/PhoneNumberUtils;->sortedCountries()Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$0;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    .line 108
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 111
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/intermedia/util/LocaleUtils;->myCountry(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/intermedia/util/PhoneNumberUtils;->regions()Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$1;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$2;->$instance:Lio/reactivex/functions/Predicate;

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$3;->$instance:Lio/reactivex/functions/Function;

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 115
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/util/LocaleUtils;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 116
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$4;->$instance:Lio/reactivex/functions/Function;

    .line 117
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$5;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    .line 118
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 120
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodePickerButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$6;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$6;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->firstStepNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$7;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberInput:Landroid/widget/EditText;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$8;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$8;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->secondStepNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$9;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$9;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationCodeInput:Landroid/widget/EditText;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$10;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$10;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$11;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$11;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->callMeButton:Landroid/widget/Button;

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$12;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$12;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public countrySelected(Lcom/intermedia/login/CountryInfo;)V
    .locals 2
    .param p1    # Lcom/intermedia/login/CountryInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 175
    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->selectedCountry:Lcom/intermedia/login/CountryInfo;

    .line 176
    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->setSelectedCountryViews(Lcom/intermedia/login/CountryInfo;)V

    return-void
.end method

.method final synthetic lambda$configure$0$PhoneVerificationPresenter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->countryCodeRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/intermedia/adapters/CountryCodeAdapter;

    invoke-direct {v1, p1, p0}, Lcom/intermedia/adapters/CountryCodeAdapter;-><init>(Ljava/util/List;Lcom/intermedia/adapters/CountryCodeAdapter$Delegate;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method final synthetic lambda$configure$1$PhoneVerificationPresenter(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->validatePhoneNumberInput()V

    return-void
.end method

.method final synthetic lambda$configure$10$PhoneVerificationPresenter(Landroid/view/View;)V
    .locals 3

    .line 152
    invoke-static {}, Lcom/intermedia/login/PhoneVerificationReporter;->reportCallMe()V

    .line 153
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->startResendCountdown()V

    .line 154
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    const v1, 0x7f1101ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 156
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->hqApi:Lcom/intermedia/network/LoggedOutApiService;

    new-instance v0, Lcom/intermedia/model/PhoneBody;

    const-string v1, "call"

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/intermedia/model/PhoneBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intermedia/network/LoggedOutApiService;->getVerificationId(Lcom/intermedia/model/PhoneBody;)Lio/reactivex/Single;

    move-result-object p1

    .line 157
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$18;

    invoke-direct {v0, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$18;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$19;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$19;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$configure$2$PhoneVerificationPresenter(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->validatePhoneNumberInput()V

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic lambda$configure$3$PhoneVerificationPresenter(Landroid/view/View;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->validateVerificationCodeInput()V

    return-void
.end method

.method final synthetic lambda$configure$4$PhoneVerificationPresenter(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->validateVerificationCodeInput()V

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic lambda$configure$7$PhoneVerificationPresenter(Landroid/view/View;)V
    .locals 3

    .line 136
    invoke-static {}, Lcom/intermedia/login/PhoneVerificationReporter;->reportResendCode()V

    .line 137
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->startResendCountdown()V

    .line 138
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1101ac

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->resendCodeButton:Landroid/widget/Button;

    .line 138
    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->hqApi:Lcom/intermedia/network/LoggedOutApiService;

    new-instance v0, Lcom/intermedia/model/PhoneBody;

    const-string v1, "sms"

    iget-object v2, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/intermedia/model/PhoneBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intermedia/network/LoggedOutApiService;->getVerificationId(Lcom/intermedia/model/PhoneBody;)Lio/reactivex/Single;

    move-result-object p1

    .line 143
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$20;

    invoke-direct {v0, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$20;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    new-instance v1, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$21;

    invoke-direct {v1, p0}, Lcom/intermedia/login/PhoneVerificationPresenter$$Lambda$21;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$handleErrorResponse$11$PhoneVerificationPresenter(Lcom/intermedia/model/ApiError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->updateUiOnError(Ljava/lang/String;)V

    .line 226
    iget v0, p1, Lcom/intermedia/model/ApiError;->errorCode:I

    const/16 v1, 0x1c9

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/intermedia/model/ApiError;->errorCode:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    .line 228
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/login/PhoneVerificationPresenter$PhoneVerificationException;

    iget-object v3, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/intermedia/login/PhoneVerificationPresenter$PhoneVerificationException;-><init>(Lcom/intermedia/login/PhoneVerificationPresenter;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 230
    iget p1, p1, Lcom/intermedia/model/ApiError;->errorCode:I

    invoke-static {p1}, Lcom/intermedia/login/PhoneVerificationReporter;->reportError(I)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$null$5$PhoneVerificationPresenter(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/VerificationId;

    .line 145
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    :cond_0
    return-void
.end method

.method final synthetic lambda$null$6$PhoneVerificationPresenter(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->reportError(Ljava/lang/Throwable;I)V

    return-void
.end method

.method final synthetic lambda$null$8$PhoneVerificationPresenter(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/VerificationId;

    .line 159
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    :cond_0
    return-void
.end method

.method final synthetic lambda$null$9$PhoneVerificationPresenter(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->reportError(Ljava/lang/Throwable;I)V

    return-void
.end method

.method final synthetic lambda$validatePhoneNumberInput$12$PhoneVerificationPresenter(Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->phoneNumberProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/VerificationId;

    .line 277
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "phone_accepted"

    .line 278
    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->logCurrentStep(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Lcom/intermedia/model/VerificationId;->phone()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    .line 281
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 282
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object p1, p1, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->context:Landroid/content/Context;

    const v2, 0x7f110025

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 283
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/intermedia/login/PhoneVerificationPresenter;->startResendCountdown()V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationViewHost;->resetFirstStepNextButton()V

    .line 288
    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->handleErrorResponse(Lretrofit2/Response;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$validatePhoneNumberInput$13$PhoneVerificationPresenter(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationViewHost;->resetFirstStepNextButton()V

    .line 292
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    .line 293
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$validateVerificationCodeInput$14$PhoneVerificationPresenter(Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    iget-object v0, v0, Lcom/intermedia/login/PhoneVerificationViewHost;->verificationProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/PhoneVerificationAuthResponse;

    .line 317
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "code_accepted"

    .line 318
    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->logCurrentStep(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/intermedia/login/PhoneVerificationReporter;->reportCompleted()V

    .line 321
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auth_result"

    .line 323
    invoke-virtual {v0}, Lcom/intermedia/model/PhoneVerificationAuthResponse;->getAuth()Lcom/intermedia/model/InHouseAuthResponse;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "verification_token"

    .line 324
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    invoke-virtual {v1}, Lcom/intermedia/model/VerificationId;->verificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->activity:Lcom/intermedia/login/PhoneVerificationActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/intermedia/login/PhoneVerificationActivity;->setResult(ILandroid/content/Intent;)V

    .line 327
    iget-object p1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->activity:Lcom/intermedia/login/PhoneVerificationActivity;

    invoke-virtual {p1}, Lcom/intermedia/login/PhoneVerificationActivity;->finish()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationViewHost;->resetSecondStepNextButton()V

    .line 330
    invoke-direct {p0, p1}, Lcom/intermedia/login/PhoneVerificationPresenter;->handleErrorResponse(Lretrofit2/Response;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$validateVerificationCodeInput$15$PhoneVerificationPresenter(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->viewHost:Lcom/intermedia/login/PhoneVerificationViewHost;

    invoke-virtual {v0}, Lcom/intermedia/login/PhoneVerificationViewHost;->resetSecondStepNextButton()V

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p1, v0}, Lcom/intermedia/login/PhoneVerificationPresenter;->reportError(Ljava/lang/Throwable;I)V

    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "verification_id"

    .line 339
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->verificationId:Lcom/intermedia/model/VerificationId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "phone_number_param"

    .line 340
    iget-object v1, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->phoneNumberParam:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method release()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->resendCountdownTimer:Landroid/os/CountDownTimer;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/intermedia/login/PhoneVerificationPresenter;->resendCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
