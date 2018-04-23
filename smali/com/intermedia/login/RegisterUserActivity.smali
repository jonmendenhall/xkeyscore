.class public final Lcom/intermedia/login/RegisterUserActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "RegisterUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_IMAGE_CAPTURE:I = 0x1


# instance fields
.field apiErrorParser:Lcom/intermedia/network/ApiErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private avatarBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field avatarUploader:Lcom/intermedia/user/AvatarUploader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private verificationId:Ljava/lang/String;

.field private verificationProvider:Ljava/lang/String;

.field private viewHost:Lcom/intermedia/login/RegisterUserViewHost;

.field private viewModel:Lcom/intermedia/login/RegisterUserViewModel$ViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    return-void
.end method

.method private enableUserInputs(Z)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static final synthetic lambda$null$6$RegisterUserActivity(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private registerFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    new-instance v1, Lcom/intermedia/model/retrofit/UsernameAvailableBody;

    invoke-direct {v1, p1}, Lcom/intermedia/model/retrofit/UsernameAvailableBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/intermedia/network/LoggedOutApiService;->usernameAvailableFirebase(Lcom/intermedia/model/retrofit/UsernameAvailableBody;)Lio/reactivex/Single;

    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$3;-><init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapMaybe(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p3

    new-instance v0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$4;-><init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/intermedia/login/RegisterUserActivity$$Lambda$5;

    invoke-direct {p1, p0}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$5;-><init>(Lcom/intermedia/login/RegisterUserActivity;)V

    .line 194
    invoke-virtual {p3, v0, p1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private registerInHouse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 220
    invoke-static {p0}, Lcom/intermedia/util/LocaleUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    new-instance v8, Lcom/intermedia/model/retrofit/RegistrationBody;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object v2, v8

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/intermedia/model/retrofit/RegistrationBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lcom/intermedia/network/LoggedOutApiService;->createNewUser(Lcom/intermedia/model/retrofit/RegistrationBody;)Lio/reactivex/Maybe;

    move-result-object p3

    .line 223
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p3

    new-instance v0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$6;-><init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/intermedia/login/RegisterUserActivity$$Lambda$7;

    invoke-direct {p1, p0}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$7;-><init>(Lcom/intermedia/login/RegisterUserActivity;)V

    invoke-virtual {p3, v0, p1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private registrationCompleted()V
    .locals 2

    .line 266
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object v0

    const-string v1, "registration_completed"

    invoke-virtual {v0, v1}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lcom/intermedia/MainActivity;->start(Landroid/content/Context;)V

    .line 268
    invoke-virtual {p0}, Lcom/intermedia/login/RegisterUserActivity;->finish()V

    return-void
.end method

.method private reportError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;

    invoke-direct {v2, p0, p1}, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;-><init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/Throwable;)V

    .line 284
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 285
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "registration_error"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showProgress(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/login/RegisterUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "verification_provider"

    .line 66
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "verification_token"

    .line 67
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public imageChooser(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 127
    invoke-static {p0, p1}, Lcom/intermedia/util/PhotoUtils;->takeNewPhoto(Landroid/app/Activity;I)V

    return-void
.end method

.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/login/RegisterUserActivity;)V

    return-void
.end method

.method final synthetic lambda$null$5$RegisterUserActivity(Lcom/intermedia/model/ApiError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    iget-object v0, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v1, v1, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f110110

    .line 247
    invoke-virtual {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v1, v1, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 251
    :goto_0
    iget v0, p1, Lcom/intermedia/model/ApiError;->errorCode:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 252
    new-instance v0, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;

    iget-object p1, p1, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;-><init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method final synthetic lambda$onCreate$0$RegisterUserActivity(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget v1, v1, Lcom/intermedia/login/RegisterUserViewHost;->dimenGrid2:I

    invoke-static {v0, p1, v1}, Lcom/intermedia/util/ValidationUtils;->setDrawable(Landroid/widget/TextView;ZI)V

    return-void
.end method

.method final synthetic lambda$onCreate$1$RegisterUserActivity(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget v1, v1, Lcom/intermedia/login/RegisterUserViewHost;->dimenGrid2:I

    invoke-static {v0, p1, v1}, Lcom/intermedia/util/ValidationUtils;->setDrawable(Landroid/widget/TextView;ZI)V

    return-void
.end method

.method final synthetic lambda$registerFirebase$2$RegisterUserActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/ApiError;)Lio/reactivex/MaybeSource;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    iget v0, p4, Lcom/intermedia/model/ApiError;->errorCode:I

    if-lez v0, :cond_1

    const/4 p1, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->showProgress(Z)V

    const/4 p1, 0x1

    .line 183
    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->enableUserInputs(Z)V

    .line 184
    iget-object p1, p4, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->emptyIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object p2, p2, Lcom/intermedia/login/RegisterUserViewHost;->nextButton:Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 186
    iget p1, p4, Lcom/intermedia/model/ApiError;->errorCode:I

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    .line 187
    new-instance p1, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;

    iget-object p2, p4, Lcom/intermedia/model/ApiError;->error:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/intermedia/login/RegisterUserActivity$RegisterUserException;-><init>(Lcom/intermedia/login/RegisterUserActivity;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->reportError(Ljava/lang/Throwable;)V

    .line 189
    :cond_0
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1

    .line 191
    :cond_1
    iget-object p4, p0, Lcom/intermedia/login/RegisterUserActivity;->loggedOutApi:Lcom/intermedia/network/LoggedOutApiService;

    invoke-interface {p4, p1, p2, p3}, Lcom/intermedia/network/LoggedOutApiService;->createNewUserFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 192
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method

.method final synthetic lambda$registerFirebase$3$RegisterUserActivity(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/intermedia/model/Account;

    .line 196
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    new-instance v8, Lcom/intermedia/user/session/UserSession;

    .line 197
    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/intermedia/user/session/UserSession;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v8}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/user/session/UserSession;)V

    .line 200
    iget-object p3, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarBitmap:Landroid/graphics/Bitmap;

    invoke-static {p3}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 201
    new-instance p3, Lcom/intermedia/util/ProcessBitmapTask;

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    const-string v1, "camera"

    const/4 v2, 0x1

    invoke-direct {p3, v0, v1, v2}, Lcom/intermedia/util/ProcessBitmapTask;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Z)V

    new-array v0, v2, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lcom/intermedia/util/ProcessBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 205
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/intermedia/util/analytics/ClientEventReporter;->registrationReferralAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/intermedia/login/RegisterUserActivity;->registrationCompleted()V

    return-void
.end method

.method final synthetic lambda$registerFirebase$4$RegisterUserActivity(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->showProgress(Z)V

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->enableUserInputs(Z)V

    .line 212
    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->reportError(Ljava/lang/Throwable;)V

    const p1, 0x7f110110

    .line 213
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method final synthetic lambda$registerInHouse$7$RegisterUserActivity(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/intermedia/model/Account;

    .line 226
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    new-instance v10, Lcom/intermedia/user/session/UserSession;

    .line 227
    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v5

    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 229
    invoke-virtual {p3}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/intermedia/user/session/UserSession;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v10}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/user/session/UserSession;)V

    .line 230
    iget-object p3, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarBitmap:Landroid/graphics/Bitmap;

    invoke-static {p3}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 231
    new-instance p3, Lcom/intermedia/util/ProcessBitmapTask;

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    const-string v3, "camera"

    invoke-direct {p3, v0, v3, v2}, Lcom/intermedia/util/ProcessBitmapTask;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Z)V

    new-array v0, v2, [Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 232
    invoke-virtual {p3, v0}, Lcom/intermedia/util/ProcessBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    :cond_0
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 235
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/intermedia/util/analytics/ClientEventReporter;->registrationReferralAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/intermedia/login/RegisterUserActivity;->registrationCompleted()V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0, v1}, Lcom/intermedia/login/RegisterUserActivity;->showProgress(Z)V

    .line 241
    invoke-direct {p0, v2}, Lcom/intermedia/login/RegisterUserActivity;->enableUserInputs(Z)V

    .line 243
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->apiErrorParser:Lcom/intermedia/network/ApiErrorParser;

    invoke-virtual {p1, p3}, Lcom/intermedia/network/ApiErrorParser;->parse(Lretrofit2/Response;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance p2, Lcom/intermedia/login/RegisterUserActivity$$Lambda$8;

    invoke-direct {p2, p0}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$8;-><init>(Lcom/intermedia/login/RegisterUserActivity;)V

    sget-object p3, Lcom/intermedia/login/RegisterUserActivity$$Lambda$9;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method final synthetic lambda$registerInHouse$8$RegisterUserActivity(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->showProgress(Z)V

    const/4 v0, 0x1

    .line 258
    invoke-direct {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->enableUserInputs(Z)V

    .line 259
    invoke-direct {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->reportError(Ljava/lang/Throwable;)V

    const p1, 0x7f110110

    .line 260
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public nextButtonClicked(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    .line 132
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->valueOf(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->referralCodeEditText:Landroid/widget/EditText;

    .line 134
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->valueOf(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f1101a3

    .line 136
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 139
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f110049

    .line 140
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    const p1, 0x7f11004a

    .line 144
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 147
    :cond_2
    sget-object v1, Lcom/intermedia/util/Patterns;->NUMERIC:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f11006f

    .line 149
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 152
    :cond_3
    sget-object v1, Lcom/intermedia/util/Patterns;->USERNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_4

    const p1, 0x7f1101a4

    .line 153
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    .line 156
    :cond_4
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/intermedia/util/Patterns;->USERNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_5

    const p1, 0x7f11006e

    .line 158
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object v0, v0, Lcom/intermedia/login/RegisterUserViewHost;->usernameEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 163
    invoke-direct {p0, v1}, Lcom/intermedia/login/RegisterUserActivity;->showProgress(Z)V

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, v1}, Lcom/intermedia/login/RegisterUserActivity;->enableUserInputs(Z)V

    .line 166
    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->verificationProvider:Ljava/lang/String;

    const-string v2, "p0"

    invoke-static {v1, v2}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->verificationId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/intermedia/login/RegisterUserActivity;->registerFirebase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->verificationId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/intermedia/login/RegisterUserActivity;->registerInHouse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/intermedia/injection/BaseInjectedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 116
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "data"

    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "data"

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarBitmap:Landroid/graphics/Bitmap;

    .line 119
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewHost;->userImage:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/intermedia/login/RegisterUserActivity;->avatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewHost;->uploadAvatarPlusImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 74
    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->setContentView(I)V

    .line 76
    new-instance p1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    invoke-direct {p1}, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;-><init>()V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewModel:Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    .line 77
    new-instance p1, Lcom/intermedia/login/RegisterUserViewHost;

    const v0, 0x7f0a015d

    invoke-virtual {p0, v0}, Lcom/intermedia/login/RegisterUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewModel:Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    invoke-direct {p1, v0, v1}, Lcom/intermedia/login/RegisterUserViewHost;-><init>(Landroid/view/ViewGroup;Lcom/intermedia/login/RegisterUserViewModel$ViewModel;)V

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    .line 79
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewHost;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/intermedia/login/RegisterUserActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 80
    invoke-virtual {p0}, Lcom/intermedia/login/RegisterUserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewModel:Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->outputs:Lcom/intermedia/login/RegisterUserViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/login/RegisterUserViewModel$Outputs;->usernameAccepted()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$0;-><init>(Lcom/intermedia/login/RegisterUserActivity;)V

    .line 83
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 87
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewModel:Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->outputs:Lcom/intermedia/login/RegisterUserViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/login/RegisterUserViewModel$Outputs;->referralAccepted()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/login/RegisterUserActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$1;-><init>(Lcom/intermedia/login/RegisterUserActivity;)V

    .line 88
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 92
    iget-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->viewModel:Lcom/intermedia/login/RegisterUserViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/login/RegisterUserViewModel$ViewModel;->outputs:Lcom/intermedia/login/RegisterUserViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/login/RegisterUserViewModel$Outputs;->nextButtonIsEnabled()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->viewHost:Lcom/intermedia/login/RegisterUserViewHost;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/intermedia/login/RegisterUserActivity$$Lambda$2;->get$Lambda(Lcom/intermedia/login/RegisterUserViewHost;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 95
    invoke-static {}, Lcom/intermedia/service/MetricsUtils;->onRegisterUserMetric()V

    .line 96
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "registration_started"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/intermedia/login/RegisterUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "verification_token"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/login/RegisterUserActivity;->verificationId:Ljava/lang/String;

    const-string v0, "verification_provider"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/login/RegisterUserActivity;->verificationProvider:Ljava/lang/String;

    :cond_0
    return-void
.end method
