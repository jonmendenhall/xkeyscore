.class public final Lcom/intermedia/libs/DeviceRegistrar;
.super Ljava/lang/Object;
.source "DeviceRegistrar.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;
    }
.end annotation


# static fields
.field private static final TOKEN_UPLOAD_THROTTLE:J


# instance fields
.field private final authedApiService:Lcom/intermedia/network/AuthedApiService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sessionManager:Lcom/intermedia/user/session/SessionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final userRepository:Lcom/intermedia/user/UserRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/intermedia/libs/DeviceRegistrar;->TOKEN_UPLOAD_THROTTLE:J

    return-void
.end method

.method constructor <init>(Lcom/intermedia/user/session/SessionManager;Lcom/intermedia/network/AuthedApiService;Lcom/intermedia/user/UserRepository;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intermedia/network/AuthedApiService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/user/UserRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/intermedia/libs/DeviceRegistrar;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    .line 44
    iput-object p1, p0, Lcom/intermedia/libs/DeviceRegistrar;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 45
    iput-object p3, p0, Lcom/intermedia/libs/DeviceRegistrar;->userRepository:Lcom/intermedia/user/UserRepository;

    .line 46
    iput-object p4, p0, Lcom/intermedia/libs/DeviceRegistrar;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private shouldUploadToken(Lcom/intermedia/model/HQUser;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Lcom/intermedia/model/HQUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    iget-object v0, p0, Lcom/intermedia/libs/DeviceRegistrar;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "push_token_uploaded_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->refreshDeviceToken()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->deviceTokens()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/intermedia/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sub-long/2addr v2, v0

    sget-wide p1, Lcom/intermedia/libs/DeviceRegistrar;->TOKEN_UPLOAD_THROTTLE:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method final synthetic lambda$null$0$DeviceRegistrar(Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/intermedia/libs/DeviceRegistrar;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "push_token_uploaded_at"

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportTokenUpload()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportTokenUploadFailed()V

    :goto_0
    return-void
.end method

.method final synthetic lambda$null$1$DeviceRegistrar(Lcom/intermedia/model/HQUser;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportTokenUploadFailed()V

    .line 73
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;

    const-string v2, "Device token upload failed"

    invoke-direct {p1, p0, v2, p2}, Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;-><init>(Lcom/intermedia/libs/DeviceRegistrar;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {v1, p1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$registerDevice$2$DeviceRegistrar(Lcom/intermedia/model/HQUser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/intermedia/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/intermedia/push/PushEventReporter;->reportTokenRefreshInvalid()V

    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/intermedia/libs/DeviceRegistrar;->shouldUploadToken(Lcom/intermedia/model/HQUser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/intermedia/libs/DeviceRegistrar;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    new-instance v2, Lcom/intermedia/model/retrofit/DeviceTokenBody;

    invoke-direct {v2, v0}, Lcom/intermedia/model/retrofit/DeviceTokenBody;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/intermedia/network/AuthedApiService;->postDeviceToken(Lcom/intermedia/model/retrofit/DeviceTokenBody;)Lio/reactivex/Single;

    move-result-object v0

    .line 60
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/intermedia/libs/DeviceRegistrar$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/intermedia/libs/DeviceRegistrar$$Lambda$1;-><init>(Lcom/intermedia/libs/DeviceRegistrar;)V

    new-instance v2, Lcom/intermedia/libs/DeviceRegistrar$$Lambda$2;

    invoke-direct {v2, p0, p1}, Lcom/intermedia/libs/DeviceRegistrar$$Lambda$2;-><init>(Lcom/intermedia/libs/DeviceRegistrar;Lcom/intermedia/model/HQUser;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public registerDevice()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/intermedia/libs/DeviceRegistrar;->userRepository:Lcom/intermedia/user/UserRepository;

    invoke-virtual {v0}, Lcom/intermedia/user/UserRepository;->getCachedUser()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/intermedia/libs/DeviceRegistrar$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/intermedia/libs/DeviceRegistrar$$Lambda$0;-><init>(Lcom/intermedia/libs/DeviceRegistrar;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public unregisterDevice()V
    .locals 5

    .line 93
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->deleteInstanceId()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v1

    new-instance v2, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v3, p0, Lcom/intermedia/libs/DeviceRegistrar;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 96
    invoke-virtual {v3}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;

    const-string v4, "Unable to delete instance id"

    invoke-direct {v3, p0, v4, v0}, Lcom/intermedia/libs/DeviceRegistrar$DeviceRegistrarException;-><init>(Lcom/intermedia/libs/DeviceRegistrar;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    :goto_0
    return-void
.end method
