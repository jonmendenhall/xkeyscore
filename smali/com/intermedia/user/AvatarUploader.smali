.class public final Lcom/intermedia/user/AvatarUploader;
.super Ljava/lang/Object;
.source "AvatarUploader.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;
    }
.end annotation


# instance fields
.field private final authedApiService:Lcom/intermedia/network/AuthedApiService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
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

.field private userRepository:Lcom/intermedia/user/UserRepository;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intermedia/network/AuthedApiService;Landroid/content/Context;Lcom/intermedia/user/session/SessionManager;Landroid/content/SharedPreferences;Lcom/intermedia/user/UserRepository;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/AuthedApiService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/intermedia/user/session/SessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/user/UserRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    .line 47
    iput-object p2, p0, Lcom/intermedia/user/AvatarUploader;->context:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/intermedia/user/AvatarUploader;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 49
    iput-object p4, p0, Lcom/intermedia/user/AvatarUploader;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    iput-object p5, p0, Lcom/intermedia/user/AvatarUploader;->userRepository:Lcom/intermedia/user/UserRepository;

    return-void
.end method

.method static synthetic access$000(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/network/AuthedApiService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/intermedia/user/AvatarUploader;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/user/session/SessionManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/intermedia/user/AvatarUploader;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/user/UserRepository;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/intermedia/user/AvatarUploader;->userRepository:Lcom/intermedia/user/UserRepository;

    return-object p0
.end method

.method private getS3Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    .line 59
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avatars/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final synthetic lambda$uploadAvatar$0$AvatarUploader(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;ZLjava/lang/String;Lcom/intermedia/model/AWSS3Credentials;)V
    .locals 1
    .param p3    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-direct {v0, p7}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 75
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->builder()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    move-result-object p7

    invoke-virtual {p7, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->s3Client(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    move-result-object p7

    const-string v0, "quiz"

    .line 76
    invoke-static {p1, v0}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "hypespace-quiz"

    goto :goto_0

    :cond_0
    const-string p1, "hypespace-quiztest"

    :goto_0
    invoke-virtual {p7, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->defaultBucket(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    move-result-object p1

    iget-object p7, p0, Lcom/intermedia/user/AvatarUploader;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p1, p7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->context(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->build()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->upload(Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    move-result-object p1

    new-instance p3, Lcom/intermedia/user/AvatarUploader$1;

    invoke-direct {p3, p0, p2, p5, p6}, Lcom/intermedia/user/AvatarUploader$1;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->setTransferListener(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-void
.end method

.method final synthetic lambda$uploadAvatar$1$AvatarUploader(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/user/AvatarUploader;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    .line 126
    invoke-virtual {v2}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;

    const-string v3, "Failed to get S3 credentials."

    invoke-direct {v2, p0, v3, p1}, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public uploadAvatar(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 10
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/SessionManager;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intermedia/user/AvatarUploader;->getS3Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v6, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    const-string v0, "image/jpeg"

    .line 67
    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "api_environment"

    const-string v2, "quiz"

    .line 70
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader;->authedApiService:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {v0}, Lcom/intermedia/network/AuthedApiService;->getS3Credentials()Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v9, Lcom/intermedia/user/AvatarUploader$$Lambda$0;

    move-object v1, v9

    move-object v2, p0

    move-object v5, p1

    move v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/intermedia/user/AvatarUploader$$Lambda$0;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;ZLjava/lang/String;)V

    new-instance p1, Lcom/intermedia/user/AvatarUploader$$Lambda$1;

    invoke-direct {p1, p0}, Lcom/intermedia/user/AvatarUploader$$Lambda$1;-><init>(Lcom/intermedia/user/AvatarUploader;)V

    .line 73
    invoke-virtual {v0, v9, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
