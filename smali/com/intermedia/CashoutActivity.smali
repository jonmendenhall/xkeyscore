.class public final Lcom/intermedia/CashoutActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "CashoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/CashoutActivity$CashoutActivityException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CashoutActivity"


# instance fields
.field balanceAmountTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0039
    .end annotation
.end field

.field cashoutButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0055
    .end annotation
.end field

.field cashoutContainer:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0058
    .end annotation
.end field

.field private cashoutEmail:Ljava/lang/String;

.field emailEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0138
    .end annotation
.end field

.field loadingIndicator:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0100
    .end annotation
.end field

.field private final payoutConfig:Lcom/intermedia/model/config/Config;

.field private payoutsStatus:Lcom/intermedia/model/method/PayoutStatus;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0a0146
    .end annotation
.end field

.field private submitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    .line 43
    invoke-static {}, Lcom/intermedia/model/config/Config;->builder()Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$Builder;->build()Lcom/intermedia/model/config/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/CashoutActivity;->payoutConfig:Lcom/intermedia/model/config/Config;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/CashoutActivity;)Lcom/intermedia/model/config/Config;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/intermedia/CashoutActivity;->payoutConfig:Lcom/intermedia/model/config/Config;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->reportNullPayoutConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->updateCashoutEmailValidity()V

    return-void
.end method

.method static synthetic access$300(Lcom/intermedia/CashoutActivity;)Lcom/intermedia/model/method/PayoutStatus;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/intermedia/CashoutActivity;->payoutsStatus:Lcom/intermedia/model/method/PayoutStatus;

    return-object p0
.end method

.method static synthetic access$302(Lcom/intermedia/CashoutActivity;Lcom/intermedia/model/method/PayoutStatus;)Lcom/intermedia/model/method/PayoutStatus;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/intermedia/CashoutActivity;->payoutsStatus:Lcom/intermedia/model/method/PayoutStatus;

    return-object p1
.end method

.method static synthetic access$402(Lcom/intermedia/CashoutActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/intermedia/CashoutActivity;->submitted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->showCashoutCompleted()V

    return-void
.end method

.method static synthetic access$600(Lcom/intermedia/CashoutActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/intermedia/CashoutActivity;->updateCashoutInProgress(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/intermedia/CashoutActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->loadPayoutsList()V

    return-void
.end method

.method private loadPayoutConfig()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {v0}, Lcom/intermedia/network/AuthedApiService;->getConfig()Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/CashoutActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/CashoutActivity$$Lambda$0;-><init>(Lcom/intermedia/CashoutActivity;)V

    new-instance v2, Lcom/intermedia/CashoutActivity$$Lambda$1;

    invoke-direct {v2, p0}, Lcom/intermedia/CashoutActivity$$Lambda$1;-><init>(Lcom/intermedia/CashoutActivity;)V

    .line 143
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private loadPayoutsList()V
    .locals 2

    .line 121
    invoke-static {p0}, Lcom/intermedia/service/ApiUtils;->getInstance(Landroid/content/Context;)Lcom/intermedia/service/ApiUtils;

    move-result-object v0

    new-instance v1, Lcom/intermedia/CashoutActivity$2;

    invoke-direct {v1, p0}, Lcom/intermedia/CashoutActivity$2;-><init>(Lcom/intermedia/CashoutActivity;)V

    invoke-virtual {v0, v1}, Lcom/intermedia/service/ApiUtils;->getPayouts(Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    return-void
.end method

.method private reportNullPayoutConfig()V
    .locals 4

    .line 207
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/CashoutActivity$CashoutActivityException;

    const-string v3, "Null payout config"

    invoke-direct {v2, v3}, Lcom/intermedia/CashoutActivity$CashoutActivityException;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method private showCashoutCompleted()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    new-instance v0, Lcom/intermedia/view/CashoutConfirmationModal;

    invoke-direct {v0, p0}, Lcom/intermedia/view/CashoutConfirmationModal;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 216
    iget-object v1, p0, Lcom/intermedia/CashoutActivity;->cashoutContainer:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/intermedia/view/CashoutConfirmationModal;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private updateCashoutButton()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->cashoutEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->payoutsStatus:Lcom/intermedia/model/method/PayoutStatus;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f060089

    goto :goto_1

    :cond_1
    const v1, 0x7f060033

    :goto_1
    if-eqz v0, :cond_2

    const v2, 0x7f0600bd

    goto :goto_2

    :cond_2
    const v2, 0x7f0600b5

    .line 106
    :goto_2
    iget-object v3, p0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/intermedia/CashoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    iget-object v1, p0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/intermedia/CashoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 108
    iget-object v1, p0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private updateCashoutEmailValidity()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/CashoutActivity;->validateEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/CashoutActivity;->cashoutEmail:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->updateCashoutButton()V

    return-void
.end method

.method private updateCashoutInProgress(Z)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->cashoutButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/CashoutActivity;)V

    return-void
.end method

.method final synthetic lambda$loadPayoutConfig$0$CashoutActivity(Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/intermedia/CashoutActivity;->payoutConfig:Lcom/intermedia/model/config/Config;

    invoke-virtual {v0}, Lcom/intermedia/model/config/Config;->toBuilder()Lcom/intermedia/model/config/Config$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/config/Config;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intermedia/model/config/Config$Builder;->payouts(Lcom/intermedia/model/config/Payouts;)Lcom/intermedia/model/config/Config$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config$Builder;->build()Lcom/intermedia/model/config/Config;

    goto :goto_0

    .line 147
    :cond_0
    sget-object p1, Lcom/intermedia/CashoutActivity;->TAG:Ljava/lang/String;

    const-string v0, "Could not load payout config; using default config"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p1

    new-instance v0, Lcom/intermedia/util/reporting/ErrorLog;

    .line 149
    invoke-static {}, Lcom/intermedia/user/session/SessionManager;->getInstance()Lcom/intermedia/user/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/intermedia/CashoutActivity$CashoutActivityException;

    const-string v2, "Failed to fetch payout config from API"

    invoke-direct {v1, v2}, Lcom/intermedia/CashoutActivity$CashoutActivityException;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$loadPayoutConfig$1$CashoutActivity(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/intermedia/CashoutActivity;->finish()V

    return-void
.end method

.method public onCashoutPressed(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->payoutConfig:Lcom/intermedia/model/config/Config;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->reportNullPayoutConfig()V

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->payoutConfig:Lcom/intermedia/model/config/Config;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->active()Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    invoke-static {p0}, Lcom/intermedia/util/UIUtils;->showInactiveAlert(Landroid/content/Context;)V

    return-void

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->payoutsStatus:Lcom/intermedia/model/method/PayoutStatus;

    invoke-virtual {p1}, Lcom/intermedia/model/method/PayoutStatus;->isEligibleForPayout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->payoutConfig:Lcom/intermedia/model/config/Config;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->threshold()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/intermedia/util/UIUtils;->showIneligibleAlert(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->cashoutEmail:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 173
    invoke-static {p0}, Lcom/intermedia/util/UIUtils;->showInvalidEmailAlert(Landroid/content/Context;)V

    return-void

    .line 177
    :cond_3
    iget-boolean p1, p0, Lcom/intermedia/CashoutActivity;->submitted:Z

    if-eqz p1, :cond_4

    .line 178
    invoke-static {p0}, Lcom/intermedia/util/UIUtils;->showAlreadySubmittedAlert(Landroid/content/Context;)V

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 182
    invoke-direct {p0, p1}, Lcom/intermedia/CashoutActivity;->updateCashoutInProgress(Z)V

    .line 183
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "cashout_started"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/intermedia/service/ApiUtils;->getInstance(Landroid/content/Context;)Lcom/intermedia/service/ApiUtils;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/intermedia/CashoutActivity;->cashoutEmail:Ljava/lang/String;

    new-instance v2, Lcom/intermedia/CashoutActivity$3;

    invoke-direct {v2, p0}, Lcom/intermedia/CashoutActivity$3;-><init>(Lcom/intermedia/CashoutActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/intermedia/service/ApiUtils;->payout(Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 59
    invoke-virtual {p0, p1}, Lcom/intermedia/CashoutActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 62
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->loadPayoutConfig()V

    .line 63
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->loadPayoutsList()V

    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/intermedia/CashoutActivity;->updateCashoutInProgress(Z)V

    .line 66
    invoke-direct {p0}, Lcom/intermedia/CashoutActivity;->updateCashoutButton()V

    .line 68
    iget-object p1, p0, Lcom/intermedia/CashoutActivity;->emailEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/intermedia/CashoutActivity$1;

    invoke-direct {v0, p0}, Lcom/intermedia/CashoutActivity$1;-><init>(Lcom/intermedia/CashoutActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
