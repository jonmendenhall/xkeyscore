.class Lcom/intermedia/user/AvatarUploader$1;
.super Ljava/lang/Object;
.source "AvatarUploader.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/user/AvatarUploader;->lambda$uploadAvatar$0$AvatarUploader(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/services/s3/model/ObjectMetadata;ZLjava/lang/String;Lcom/intermedia/model/AWSS3Credentials;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/user/AvatarUploader;

.field final synthetic val$avatarSource:Ljava/lang/String;

.field final synthetic val$fromRegistration:Z

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    iput-object p2, p0, Lcom/intermedia/user/AvatarUploader$1;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/intermedia/user/AvatarUploader$1;->val$fromRegistration:Z

    iput-object p4, p0, Lcom/intermedia/user/AvatarUploader$1;->val$avatarSource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onStateChanged$0$AvatarUploader$1(ZLjava/lang/String;Lcom/intermedia/model/Avatar;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    invoke-static {v0}, Lcom/intermedia/user/AvatarUploader;->access$200(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/user/UserRepository;

    move-result-object v0

    invoke-virtual {p3}, Lcom/intermedia/model/Avatar;->avatarUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/intermedia/user/UserRepository;->saveAvatar(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 90
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string p2, "registration_avatarAdded"

    invoke-virtual {p1, p2}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string p3, "avatar_changed"

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    const-string v2, "source"

    .line 96
    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    aput-object p2, v0, v1

    .line 94
    invoke-virtual {p1, p3, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;[Landroid/util/Pair;)V

    :goto_0
    return-void
.end method

.method final synthetic lambda$onStateChanged$1$AvatarUploader$1(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v2, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    .line 103
    invoke-static {v2}, Lcom/intermedia/user/AvatarUploader;->access$100(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/user/session/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;

    iget-object v3, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    const-string v4, "Failed to update avatar"

    invoke-direct {v2, v3, v4, p1}, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public onError(ILjava/lang/Exception;)V
    .locals 4
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p1

    new-instance v0, Lcom/intermedia/util/reporting/ErrorLog;

    iget-object v1, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    .line 120
    invoke-static {v1}, Lcom/intermedia/user/AvatarUploader;->access$100(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/user/session/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intermedia/user/session/SessionManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;

    iget-object v2, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    const-string v3, "Failed to upload avatar to S3"

    invoke-direct {v1, v2, v3, p2}, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-void
.end method

.method public onProgressChanged(IJJ)V
    .locals 0

    return-void
.end method

.method public onStateChanged(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 2
    .param p2    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    if-ne p2, p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/intermedia/user/AvatarUploader$1;->this$0:Lcom/intermedia/user/AvatarUploader;

    invoke-static {p1}, Lcom/intermedia/user/AvatarUploader;->access$000(Lcom/intermedia/user/AvatarUploader;)Lcom/intermedia/network/AuthedApiService;

    move-result-object p1

    new-instance p2, Lcom/intermedia/model/retrofit/AvatarBody;

    iget-object v0, p0, Lcom/intermedia/user/AvatarUploader$1;->val$key:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/intermedia/model/retrofit/AvatarBody;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-interface {p1, p2}, Lcom/intermedia/network/AuthedApiService;->updateAvatar(Lcom/intermedia/model/retrofit/AvatarBody;)Lio/reactivex/Single;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;

    iget-boolean v0, p0, Lcom/intermedia/user/AvatarUploader$1;->val$fromRegistration:Z

    iget-object v1, p0, Lcom/intermedia/user/AvatarUploader$1;->val$avatarSource:Ljava/lang/String;

    invoke-direct {p2, p0, v0, v1}, Lcom/intermedia/user/AvatarUploader$1$$Lambda$0;-><init>(Lcom/intermedia/user/AvatarUploader$1;ZLjava/lang/String;)V

    new-instance v0, Lcom/intermedia/user/AvatarUploader$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/user/AvatarUploader$1$$Lambda$1;-><init>(Lcom/intermedia/user/AvatarUploader$1;)V

    .line 87
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
