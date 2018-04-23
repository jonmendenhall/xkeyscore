.class public Lcom/intermedia/login/LoginActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/login/LoginActivity$LoginActivityException;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_DEBUG_ACTIVITY:I = 0x3

.field private static final REQUEST_CODE_FIREBASE_AUTH:I = 0x1

.field private static final REQUEST_CODE_IN_HOUSE_AUTH:I = 0x2

.field private static final STATE_VERIFICATION_PROVIDER:Ljava/lang/String; = "verification_provider"

.field private static final TAG:Ljava/lang/String; = "LoginActivity"


# instance fields
.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field hqRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field

.field loggedOutConfigRepository:Lcom/intermedia/config/LoggedOutConfigRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginFailureGenericString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110137
    .end annotation
.end field

.field private onCompleteListener:Lcom/google/android/gms/tasks/OnCompleteListener;

.field sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private verificationProvider:Ljava/lang/String;

.field private viewHost:Lcom/intermedia/login/LoginViewHost;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    .line 60
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/intermedia/login/LoginActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 141
    new-instance v0, Lcom/intermedia/login/LoginActivity$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/login/LoginActivity$$Lambda$0;-><init>(Lcom/intermedia/login/LoginActivity;)V

    iput-object v0, p0, Lcom/intermedia/login/LoginActivity;->onCompleteListener:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/login/LoginActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/intermedia/login/LoginActivity;->verificationProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/intermedia/login/LoginActivity;->authenticateUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/intermedia/login/LoginActivity;->handleAuthenticationFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/intermedia/login/LoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/intermedia/login/LoginActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/intermedia/login/LoginActivity;->startMainActivity()V

    return-void
.end method

.method private authenticateUser(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-static {p0}, Lcom/intermedia/service/ApiUtils;->getInstance(Landroid/content/Context;)Lcom/intermedia/service/ApiUtils;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/intermedia/login/LoginActivity$2;-><init>(Lcom/intermedia/login/LoginActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/intermedia/service/ApiUtils;->authenticateUser(Ljava/lang/String;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    return-void
.end method

.method private checkUIDAvailable(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    invoke-static {p0}, Lcom/intermedia/service/ApiUtils;->getInstance(Landroid/content/Context;)Lcom/intermedia/service/ApiUtils;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/LoginActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/intermedia/login/LoginActivity$1;-><init>(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/intermedia/service/ApiUtils;->checkUIDAvailable(Ljava/lang/String;Lcom/intermedia/service/ApiUtils$APIResponseListener;)V

    return-void
.end method

.method private handleAuthenticationFailure(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0}, Lcom/intermedia/login/LoginActivity;->showLoadingIndicator(Z)V

    .line 259
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->loginFailureGenericString:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v1, v1, Lcom/intermedia/login/LoginViewHost;->containerView:Landroid/view/View;

    iget v2, p0, Lcom/intermedia/login/LoginActivity;->hqRedColor:I

    invoke-static {v0, v1, v2}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;I)V

    .line 261
    sget-object v0, Lcom/intermedia/login/LoginActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/intermedia/service/MetricsUtils;->logCrashlytics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic lambda$onCreate$1$LoginActivity(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method private setDebugToolsButtonView()V
    .locals 3

    const-string v0, "external"

    const-string v1, "internal"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v0, v0, Lcom/intermedia/login/LoginViewHost;->debugChannelTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "api_channel"

    const-string v2, "hq"

    .line 289
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v1, v1, Lcom/intermedia/login/LoginViewHost;->debugChannelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v0, v0, Lcom/intermedia/login/LoginViewHost;->debugChannelTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showLoadingIndicator(Z)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v0, v0, Lcom/intermedia/login/LoginViewHost;->getStartedButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v0, v0, Lcom/intermedia/login/LoginViewHost;->signingInProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startMainActivity()V
    .locals 2

    .line 252
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "app_login"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 253
    invoke-static {p0}, Lcom/intermedia/MainActivity;->start(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/intermedia/login/LoginActivity;->finish()V

    return-void
.end method


# virtual methods
.method public debugEnvClicked(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 282
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/intermedia/InternalToolsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/intermedia/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/login/LoginActivity;)V

    return-void
.end method

.method final synthetic lambda$new$4$LoginActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/intermedia/login/LoginActivity;->checkUIDAvailable(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Failed to fetch a Firebase token id"

    .line 145
    invoke-direct {p0, p1}, Lcom/intermedia/login/LoginActivity;->handleAuthenticationFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$onCreate$0$LoginActivity(Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/config/LoggedOutConfig;

    .line 88
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->loggedOutConfigRepository:Lcom/intermedia/config/LoggedOutConfigRepository;

    .line 89
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/intermedia/model/config/LoggedOutConfig;->builder()Lcom/intermedia/model/config/LoggedOutConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/config/LoggedOutConfig$Builder;->build()Lcom/intermedia/model/config/LoggedOutConfig;

    move-result-object p1

    .line 88
    :goto_0
    invoke-virtual {v0, p1}, Lcom/intermedia/config/LoggedOutConfigRepository;->saveConfig(Lcom/intermedia/model/config/LoggedOutConfig;)V

    return-void
.end method

.method final synthetic lambda$onResume$2$LoginActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/intermedia/login/LoginActivity;->phoneVerification()V

    return-void
.end method

.method final synthetic lambda$phoneVerification$3$LoginActivity(Lcom/intermedia/model/config/LoggedOutConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/intermedia/model/config/LoggedOutConfig;->verification()Lcom/intermedia/model/config/VerificationProvider;

    move-result-object p1

    .line 123
    invoke-static {}, Lcom/intermedia/model/config/VerificationProvider;->builder()Lcom/intermedia/model/config/VerificationProvider$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intermedia/model/config/VerificationProvider$Builder;->build()Lcom/intermedia/model/config/VerificationProvider;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/config/VerificationProvider;

    .line 123
    invoke-virtual {p1}, Lcom/intermedia/model/config/VerificationProvider;->provider()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/login/LoginActivity;->verificationProvider:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity;->verificationProvider:Ljava/lang/String;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 126
    invoke-static {p0, p1}, Lcom/intermedia/login/PhoneVerificationActivity;->start(Landroid/app/Activity;I)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;

    const-string v0, "phone"

    invoke-direct {p1, v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->build()Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    move-result-object p1

    .line 129
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 133
    invoke-static {}, Lcom/firebase/ui/auth/AuthUI;->getInstance()Lcom/firebase/ui/auth/AuthUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI;->createSignInIntentBuilder()Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;->setAvailableProviders(Ljava/util/List;)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;

    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;->setLogo(I)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;

    const v0, 0x7f120008

    .line 135
    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;->setTheme(I)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/AuthUI$SignInIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/intermedia/login/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/intermedia/injection/BaseInjectedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v0, :cond_3

    .line 174
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object p1, p1, Lcom/intermedia/login/LoginViewHost;->getStartedButton:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object p1, p1, Lcom/intermedia/login/LoginViewHost;->signingInProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string p1, "auth_result"

    .line 177
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/InHouseAuthResponse;

    .line 178
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object p2, p0, Lcom/intermedia/login/LoginActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {p2, p1}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/model/InHouseAuthResponse;)V

    .line 181
    invoke-direct {p0}, Lcom/intermedia/login/LoginActivity;->startMainActivity()V

    goto :goto_0

    :cond_0
    const-string p1, "verification_token"

    .line 185
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 187
    iget-object p2, p0, Lcom/intermedia/login/LoginActivity;->verificationProvider:Ljava/lang/String;

    .line 188
    invoke-static {p0, p2, p1}, Lcom/intermedia/login/RegisterUserActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/intermedia/login/LoginActivity;->finish()V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity;->loginFailureGenericString:Ljava/lang/String;

    iget-object p3, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object p3, p3, Lcom/intermedia/login/LoginViewHost;->containerView:Landroid/view/View;

    invoke-static {p1, p3}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 194
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p1

    new-instance p3, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 195
    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/intermedia/login/LoginActivity$LoginActivityException;

    const-string v1, "Empty verification id"

    invoke-direct {v0, v1}, Lcom/intermedia/login/LoginActivity$LoginActivityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p3

    .line 194
    invoke-virtual {p1, p3}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 197
    invoke-direct {p0, p2}, Lcom/intermedia/login/LoginActivity;->showLoadingIndicator(Z)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_3

    .line 162
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 164
    invoke-direct {p0, p2}, Lcom/intermedia/login/LoginActivity;->showLoadingIndicator(Z)V

    .line 165
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/login/LoginActivity;->onCompleteListener:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_2
    const-string p1, "Firebase user was null after auth"

    .line 167
    invoke-direct {p0, p1}, Lcom/intermedia/login/LoginActivity;->handleAuthenticationFailure(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 80
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0022

    .line 81
    invoke-virtual {p0, v0}, Lcom/intermedia/login/LoginActivity;->setContentView(I)V

    .line 82
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 84
    new-instance v0, Lcom/intermedia/login/LoginViewHost;

    const v1, 0x7f0a007d

    invoke-virtual {p0, v1}, Lcom/intermedia/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/intermedia/login/LoginViewHost;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    .line 86
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/intermedia/login/LoginActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    invoke-interface {v1}, Lcom/intermedia/network/LoggedOutApiService;->getConfig()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/intermedia/login/LoginActivity$$Lambda$1;

    invoke-direct {v2, p0}, Lcom/intermedia/login/LoginActivity$$Lambda$1;-><init>(Lcom/intermedia/login/LoginActivity;)V

    sget-object v3, Lcom/intermedia/login/LoginActivity$$Lambda$2;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    if-eqz p1, :cond_0

    const-string v0, "verification_provider"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/login/LoginActivity;->verificationProvider:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 99
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/intermedia/login/LoginActivity;->setDebugToolsButtonView()V

    .line 101
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->viewHost:Lcom/intermedia/login/LoginViewHost;

    iget-object v0, v0, Lcom/intermedia/login/LoginViewHost;->getStartedButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intermedia/login/LoginActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/LoginActivity$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/intermedia/login/LoginActivity$$Lambda$3;-><init>(Lcom/intermedia/login/LoginActivity;)V

    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "verification_provider"

    .line 152
    iget-object v1, p0, Lcom/intermedia/login/LoginActivity;->verificationProvider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public phoneVerification()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {v0}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/intermedia/login/LoginActivity;->loggedOutConfigRepository:Lcom/intermedia/config/LoggedOutConfigRepository;

    invoke-virtual {v1}, Lcom/intermedia/config/LoggedOutConfigRepository;->getConfig()Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/login/LoginActivity$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/intermedia/login/LoginActivity$$Lambda$4;-><init>(Lcom/intermedia/login/LoginActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public privacy(Landroid/view/View;)V
    .locals 1

    .line 274
    sget-object p1, Lcom/intermedia/login/LoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "Privacy"

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public rules(Landroid/view/View;)V
    .locals 1

    .line 278
    sget-object p1, Lcom/intermedia/login/LoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "Rules"

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public terms(Landroid/view/View;)V
    .locals 1

    .line 270
    sget-object p1, Lcom/intermedia/login/LoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "Terms"

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
