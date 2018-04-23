.class public Lcom/intermedia/MainActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/MainActivity$MainActivityException;
    }
.end annotation


# static fields
.field private static final FETCH_SHOW_TIME_PERIOD:J

.field public static final REQUEST_CODE_DEBUG_ACTIVITY:I = 0x1

.field public static final REQUEST_CODE_GAME_ACTIVITY:I = 0x2

.field public static final REQUEST_CODE_WRITE_EXTERNAL_STORAGE_PERMISSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field protected avatarUploader:Lcom/intermedia/user/AvatarUploader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private checkShowHandler:Landroid/os/Handler;

.field private checkShowRunnable:Ljava/lang/Runnable;

.field protected deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private disposables:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field heartNoLivesColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f06007d
    .end annotation
.end field

.field hqRedColor:I
    .annotation build Lbutterknife/BindColor;
        value = 0x7f060089
    .end annotation
.end field

.field private inflightShowRequest:Z

.field private lastShownShow:J

.field protected logoutManager:Lcom/intermedia/user/session/LogoutManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private requestShowBackoffHandler:Landroid/os/Handler;

.field protected sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private showRequestAttempts:I

.field private showTime:Lcom/intermedia/model/ShowTime;

.field protected showTimeRepository:Lcom/intermedia/game/ShowTimeRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private showsShown:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field unableToLoadImageString:Ljava/lang/String;
    .annotation build Lbutterknife/BindString;
        value = 0x7f110039
    .end annotation
.end field

.field protected userConfigRepository:Lcom/intermedia/config/UserConfigRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private viewHost:Lcom/intermedia/profile/ProfileViewHost;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/MainActivity;->FETCH_SHOW_TIME_PERIOD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intermedia/MainActivity;->checkShowHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/intermedia/MainActivity;->inflightShowRequest:Z

    .line 76
    iput v0, p0, Lcom/intermedia/MainActivity;->showRequestAttempts:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/intermedia/MainActivity;->requestShowBackoffHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/MainActivity;->showsShown:Ljava/util/HashSet;

    .line 80
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/intermedia/MainActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private checkAppVersion()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/intermedia/MainActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v1}, Lcom/intermedia/config/UserConfigRepository;->getConfigFlowable()Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/MainActivity$$Lambda$6;

    invoke-direct {v2, p0}, Lcom/intermedia/MainActivity$$Lambda$6;-><init>(Lcom/intermedia/MainActivity;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static final synthetic lambda$onCreate$1$MainActivity(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private refreshShowTime()V
    .locals 3

    .line 193
    iget-boolean v0, p0, Lcom/intermedia/MainActivity;->inflightShowRequest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/intermedia/MainActivity;->inflightShowRequest:Z

    .line 198
    iget-object v0, p0, Lcom/intermedia/MainActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "api_channel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/intermedia/MainActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/MainActivity$$Lambda$9;

    invoke-direct {v2, p0, v0}, Lcom/intermedia/MainActivity$$Lambda$9;-><init>(Lcom/intermedia/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private refreshUser()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/intermedia/MainActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {v0}, Lcom/intermedia/network/AuthedApiService;->getUser()Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/MainActivity$$Lambda$7;

    invoke-direct {v1, p0}, Lcom/intermedia/MainActivity$$Lambda$7;-><init>(Lcom/intermedia/MainActivity;)V

    sget-object v2, Lcom/intermedia/MainActivity$$Lambda$8;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setDebugToolsButtonView()V
    .locals 4

    const-string v0, "external"

    const-string v1, "internal"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->debugChannelTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/intermedia/MainActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "api_channel"

    const-string v2, "hq"

    .line 229
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/intermedia/MainActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "api_environment"

    const-string v3, "prod"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v2, v2, Lcom/intermedia/profile/ProfileViewHost;->debugChannelTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->debugChannelTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupAvatar(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 256
    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/intermedia/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avatar url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object p1, p1, Lcom/intermedia/profile/ProfileViewHost;->avatarImageView:Landroid/widget/ImageView;

    const v0, 0x7f0800a4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setupUserProfile(Lcom/intermedia/model/HQUser;)V
    .locals 4
    .param p1    # Lcom/intermedia/model/HQUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->textViewUsername:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->lifeCountTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->lives()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->lives()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/intermedia/MainActivity;->hqRedColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/intermedia/MainActivity;->heartNoLivesColor:I

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v1, v1, Lcom/intermedia/profile/ProfileViewHost;->lifeCountHeartView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 244
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->leaderboard()Lcom/intermedia/model/Leaderboard;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->balance:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->leaderboard()Lcom/intermedia/model/Leaderboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/model/Leaderboard;->getUnclaimed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->weeklyRank:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->leaderboard()Lcom/intermedia/model/Leaderboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/intermedia/model/Leaderboard;->formattedRank()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 248
    :cond_1
    new-instance v0, Lcom/intermedia/util/reporting/ErrorLog;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/intermedia/MainActivity$MainActivityException;

    const-string v1, "User.Leaderboard is null"

    invoke-direct {p1, p0, v1}, Lcom/intermedia/MainActivity$MainActivityException;-><init>(Lcom/intermedia/MainActivity;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/intermedia/MainActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0, p1}, Lcom/intermedia/user/UserRepository;->addUserToErrorLog(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 251
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :goto_1
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startTimer()V
    .locals 2

    .line 269
    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$10;-><init>(Lcom/intermedia/MainActivity;)V

    iput-object v0, p0, Lcom/intermedia/MainActivity;->checkShowRunnable:Ljava/lang/Runnable;

    .line 274
    iget-object v0, p0, Lcom/intermedia/MainActivity;->checkShowHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intermedia/MainActivity;->checkShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateShowTime()V
    .locals 5

    .line 278
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextGameContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-virtual {v0}, Lcom/intermedia/model/ShowTime;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showsShown:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    .line 283
    invoke-virtual {v4}, Lcom/intermedia/model/ShowTime;->getBroadcast()Lcom/intermedia/model/Broadcast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v4

    .line 282
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-virtual {v0}, Lcom/intermedia/model/ShowTime;->isBroadcastFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->watchLiveGame()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    const v1, 0x7f11010e

    invoke-virtual {p0, v1}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-virtual {v0}, Lcom/intermedia/model/ShowTime;->hasNextShowScheduled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    const v1, 0x7f11013f

    invoke-virtual {p0, v1}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-virtual {v1}, Lcom/intermedia/model/ShowTime;->formattedShowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-virtual {v2}, Lcom/intermedia/model/ShowTime;->getNextShowPrize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " prize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    const v1, 0x7f110141

    invoke-virtual {p0, v1}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->gameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->prizeAmountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->nextTimeLabel:Landroid/widget/TextView;

    const v1, 0x7f1100b8

    invoke-virtual {p0, v1}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private watchLiveGame()V
    .locals 4

    .line 323
    sget-object v0, Lcom/intermedia/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "watchLiveGame(): starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    iget-object v1, p0, Lcom/intermedia/MainActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/intermedia/model/ShowTime;->selectBroadcast(Landroid/content/SharedPreferences;)Lcom/intermedia/model/Broadcast;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/intermedia/MainActivity;->lastShownShow:J

    .line 327
    iget-object v1, p0, Lcom/intermedia/MainActivity;->showsShown:Ljava/util/HashSet;

    iget-wide v2, p0, Lcom/intermedia/MainActivity;->lastShownShow:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v1}, Lcom/intermedia/config/UserConfigRepository;->getCachedConfig()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/intermedia/MainActivity$$Lambda$11;

    invoke-direct {v2, p0, v0}, Lcom/intermedia/MainActivity$$Lambda$11;-><init>(Lcom/intermedia/MainActivity;Lcom/intermedia/model/Broadcast;)V

    .line 329
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$MainActivity(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/MainActivity;->setupAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public cashout(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 407
    iget-object p1, p0, Lcom/intermedia/MainActivity;->connectivityManager:Lcom/intermedia/network/NetworkConnectivityManager;

    invoke-virtual {p1}, Lcom/intermedia/network/NetworkConnectivityManager;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/intermedia/MainActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {p1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$13;-><init>(Lcom/intermedia/MainActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public debugEnvClicked(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 179
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/intermedia/InternalToolsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/intermedia/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getMore(Landroid/view/View;)V
    .locals 1

    .line 389
    sget-object p1, Lcom/intermedia/MainActivity;->TAG:Ljava/lang/String;

    const v0, 0x7f110113

    invoke-virtual {p0, v0}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/MainActivity;)V

    return-void
.end method

.method public invite(Landroid/view/View;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lcom/intermedia/MainActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {p1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$12;-><init>(Lcom/intermedia/MainActivity;)V

    .line 394
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$cashout$14$MainActivity(Lcom/intermedia/model/HQUser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    sget-object p1, Lcom/intermedia/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/intermedia/util/UIUtils;->startCashoutActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 413
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "cashout_opened"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$checkAppVersion$5$MainActivity(Lcom/intermedia/model/config/Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/intermedia/model/config/Config$MinVersion;->DEFAULT:Lcom/intermedia/model/config/Config$MinVersion;

    .line 165
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->minVersion()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/config/Config$MinVersion;

    .line 167
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/intermedia/model/config/Config$MinVersion;->android()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/intermedia/util/PlayStoreUtils;->userNeedsAppUpgrade(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "app_upgradeNeeded"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    const p1, 0x7f0c0062

    .line 169
    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->setContentView(I)V

    const p1, 0x7f0a010b

    .line 170
    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$17;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$17;-><init>(Lcom/intermedia/MainActivity;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a010a

    .line 172
    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$18;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$18;-><init>(Lcom/intermedia/MainActivity;)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$invite$13$MainActivity(Lcom/intermedia/model/HQUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/intermedia/util/UIUtils;->invite(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$null$3$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-static {p0}, Lcom/intermedia/util/PlayStoreUtils;->startPlayStoreIntent(Landroid/content/Context;)V

    return-void
.end method

.method final synthetic lambda$null$4$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-static {p0}, Lcom/intermedia/util/PlayStoreUtils;->startPlayStoreIntent(Landroid/content/Context;)V

    return-void
.end method

.method final synthetic lambda$null$7$MainActivity(Lcom/intermedia/model/ShowTime;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTimeRepository:Lcom/intermedia/game/ShowTimeRepository;

    iget-object v1, p1, Lcom/intermedia/model/ShowTime;->gameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/intermedia/game/ShowTimeRepository;->setGameKey(Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    .line 207
    iget-object p1, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object p1, p1, Lcom/intermedia/profile/ProfileViewHost;->nextGameContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->updateShowTime()V

    :cond_0
    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/intermedia/MainActivity;->inflightShowRequest:Z

    .line 211
    iput p1, p0, Lcom/intermedia/MainActivity;->showRequestAttempts:I

    return-void
.end method

.method final synthetic lambda$null$8$MainActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/intermedia/MainActivity;->inflightShowRequest:Z

    return-void
.end method

.method final synthetic lambda$null$9$MainActivity(Lcom/intermedia/model/HQUser;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/intermedia/MainActivity$MainActivityException;

    const-string v2, "Refresh next show time failed"

    invoke-direct {p1, p0, v2, p2}, Lcom/intermedia/MainActivity$MainActivityException;-><init>(Lcom/intermedia/MainActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    invoke-virtual {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 213
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    .line 217
    iget p1, p0, Lcom/intermedia/MainActivity;->showRequestAttempts:I

    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x5

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/intermedia/MainActivity;->showRequestAttempts:I

    .line 218
    iget p1, p0, Lcom/intermedia/MainActivity;->showRequestAttempts:I

    iget p2, p0, Lcom/intermedia/MainActivity;->showRequestAttempts:I

    mul-int/2addr p1, p2

    .line 219
    iget-object p2, p0, Lcom/intermedia/MainActivity;->requestShowBackoffHandler:Landroid/os/Handler;

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$16;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$16;-><init>(Lcom/intermedia/MainActivity;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final synthetic lambda$onCreate$0$MainActivity(Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/LoginTokenResponse;

    .line 120
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/intermedia/MainActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    iget-object v0, v0, Lcom/intermedia/model/LoginTokenResponse;->loginToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/intermedia/user/session/SessionManager;->setLoginToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$onResume$2$MainActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/intermedia/MainActivity;->watchButtonPressed()V

    return-void
.end method

.method final synthetic lambda$refreshShowTime$10$MainActivity(Ljava/lang/String;Lcom/intermedia/model/HQUser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/intermedia/MainActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {v0, p1}, Lcom/intermedia/network/AuthedApiService;->getShowsNow(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 203
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$14;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$14;-><init>(Lcom/intermedia/MainActivity;)V

    new-instance v1, Lcom/intermedia/MainActivity$$Lambda$15;

    invoke-direct {v1, p0, p2}, Lcom/intermedia/MainActivity$$Lambda$15;-><init>(Lcom/intermedia/MainActivity;Lcom/intermedia/model/HQUser;)V

    .line 203
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method final synthetic lambda$refreshUser$6$MainActivity(Lcom/intermedia/model/HQUser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/intermedia/MainActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0, p1}, Lcom/intermedia/user/UserRepository;->saveUser(Lcom/intermedia/model/HQUser;)V

    .line 186
    iget-object v0, p0, Lcom/intermedia/MainActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    invoke-virtual {v0}, Lcom/intermedia/libs/DeviceRegistrar;->registerDevice()V

    .line 187
    invoke-direct {p0, p1}, Lcom/intermedia/MainActivity;->setupUserProfile(Lcom/intermedia/model/HQUser;)V

    .line 188
    invoke-static {}, Lcom/intermedia/service/MetricsUtils;->onLoggedinKeyMetric()V

    return-void
.end method

.method final synthetic lambda$startTimer$11$MainActivity()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/intermedia/MainActivity;->checkShowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/intermedia/MainActivity;->checkShowHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intermedia/MainActivity;->checkShowRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/intermedia/MainActivity;->FETCH_SHOW_TIME_PERIOD:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->refreshShowTime()V

    return-void
.end method

.method final synthetic lambda$watchLiveGame$12$MainActivity(Lcom/intermedia/model/Broadcast;Lcom/intermedia/model/config/Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    invoke-virtual {p2}, Lcom/intermedia/model/config/Config;->eloiEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 330
    invoke-virtual {p2}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result p2

    .line 329
    invoke-static {p0, p1, v0, p2}, Lcom/intermedia/GameActivity;->start(Landroid/app/Activity;Lcom/intermedia/model/Broadcast;ZI)V

    return-void
.end method

.method public logout()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/intermedia/MainActivity;->checkShowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0}, Lcom/intermedia/config/UserConfigRepository;->reset()V

    .line 337
    iget-object v0, p0, Lcom/intermedia/MainActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    invoke-virtual {v0}, Lcom/intermedia/libs/DeviceRegistrar;->unregisterDevice()V

    .line 338
    iget-object v0, p0, Lcom/intermedia/MainActivity;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/LogoutManager;->logout()V

    .line 339
    invoke-virtual {p0}, Lcom/intermedia/MainActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/intermedia/injection/BaseInjectedActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const-string p1, "reason"

    .line 362
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object p2, p2, Lcom/intermedia/profile/ProfileViewHost;->mainContainer:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    const p1, 0x7f11007a

    .line 365
    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object p2, p2, Lcom/intermedia/profile/ProfileViewHost;->mainContainer:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    .line 367
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string p2, "game_isFull"

    invoke-virtual {p1, p2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    const p1, 0x7f110110

    .line 369
    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object p2, p2, Lcom/intermedia/profile/ProfileViewHost;->mainContainer:Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_2

    const-string p1, ""

    const/4 p2, 0x0

    .line 350
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/intermedia/MainActivity;->logout()V

    goto :goto_0

    .line 354
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/intermedia/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/intermedia/MainActivity;->finish()V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 98
    invoke-virtual {p0, p1}, Lcom/intermedia/MainActivity;->setContentView(I)V

    .line 99
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 101
    invoke-static {}, Lcom/intermedia/service/MetricsUtils;->onMainScreenKeyMetric()V

    .line 102
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->checkAppVersion()V

    .line 104
    new-instance p1, Lcom/intermedia/profile/ProfileViewHost;

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/intermedia/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/intermedia/profile/ProfileViewHost;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    .line 106
    invoke-virtual {p0}, Lcom/intermedia/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v0}, Lcom/intermedia/util/NullableUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string v0, "from_push"

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "push_type"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/push/PushEventReporter;->reportOpen(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/intermedia/MainActivity;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {p1}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/intermedia/MainActivity$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    .line 112
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$1;-><init>(Lcom/intermedia/MainActivity;)V

    sget-object v1, Lcom/intermedia/MainActivity$$Lambda$2;->$instance:Lio/reactivex/functions/Consumer;

    .line 113
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 117
    iget-object p1, p0, Lcom/intermedia/MainActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {p1}, Lcom/intermedia/user/session/SessionManager;->getLoginToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/intermedia/MainActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {p1}, Lcom/intermedia/network/AuthedApiService;->getLoginToken()Lio/reactivex/Maybe;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p1

    new-instance v0, Lcom/intermedia/MainActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/intermedia/MainActivity$$Lambda$3;-><init>(Lcom/intermedia/MainActivity;)V

    sget-object v1, Lcom/intermedia/MainActivity$$Lambda$4;->$instance:Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public onFriendsButtonClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 418
    invoke-static {p0}, Lcom/intermedia/FriendsActivityStarter;->start(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 129
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0}, Lcom/intermedia/config/UserConfigRepository;->release()V

    .line 131
    iget-object v0, p0, Lcom/intermedia/MainActivity;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 132
    iget-object v0, p0, Lcom/intermedia/MainActivity;->checkShowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/intermedia/MainActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_shown_show"

    iget-wide v2, p0, Lcom/intermedia/MainActivity;->lastShownShow:J

    .line 134
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Lcom/intermedia/injection/BaseInjectedActivity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/intermedia/MainActivity;->defaultSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_shown_show"

    const-string v2, "0"

    .line 148
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/MainActivity;->lastShownShow:J

    .line 150
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showsShown:Ljava/util/HashSet;

    iget-wide v1, p0, Lcom/intermedia/MainActivity;->lastShownShow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/intermedia/MainActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0}, Lcom/intermedia/config/UserConfigRepository;->fetch()V

    .line 153
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->refreshUser()V

    .line 154
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->startTimer()V

    .line 155
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->setDebugToolsButtonView()V

    .line 157
    iget-object v0, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v0, v0, Lcom/intermedia/profile/ProfileViewHost;->watchButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intermedia/MainActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/MainActivity$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/intermedia/MainActivity$$Lambda$5;-><init>(Lcom/intermedia/MainActivity;)V

    .line 158
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startLeaderboardActivity(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 380
    invoke-static {p0}, Lcom/intermedia/LeaderboardActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public startSettingsActivity(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    invoke-static {p0}, Lcom/intermedia/SettingsActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public viewAboutScreen(Landroid/view/View;)V
    .locals 1

    .line 384
    sget-object p1, Lcom/intermedia/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "viewAboutScreen(): starting"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object p1, Lcom/intermedia/MainActivity;->TAG:Ljava/lang/String;

    const v0, 0x7f110069

    invoke-virtual {p0, v0}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/intermedia/util/UIUtils;->startAboutActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public watchButtonPressed()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/intermedia/MainActivity;->showTime:Lcom/intermedia/model/ShowTime;

    invoke-virtual {v0}, Lcom/intermedia/model/ShowTime;->isBroadcastFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/intermedia/MainActivity;->watchLiveGame()V

    goto :goto_0

    :cond_0
    const v0, 0x7f11007a

    .line 401
    invoke-virtual {p0, v0}, Lcom/intermedia/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/MainActivity;->viewHost:Lcom/intermedia/profile/ProfileViewHost;

    iget-object v1, v1, Lcom/intermedia/profile/ProfileViewHost;->mainContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void
.end method
